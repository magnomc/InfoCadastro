unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Data.DB,REST.Types,System.JSON,
  Xml.XMLDoc, FireDAC.Stan.StorageXML,Datasnap.DBClient,XMLIntf,
  IdMessageClient,IdSMTPBase,IdSMTP,IdMessage,IdIOHandler,IdIOHandlerSocket,IdIOHandlerStack,
  IdSSL,IdSSLOpenSSL,IdAttachmentFile,IdGlobal,IdExplicitTLSClientServerBase;

type
  TfrmPrincipal = class(TForm)
    pnlBotoes: TPanel;
    btnSair: TBitBtn;
    btnEnviarEmail: TBitBtn;
    btnLimpar: TBitBtn;
    pcPrincipal: TPageControl;
    TabCadastro: TTabSheet;
    TabConfiguracoes: TTabSheet;
    grbEndereco: TGroupBox;
    grbPrincipal: TGroupBox;
    dbeNome: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    dbeIdent: TDBEdit;
    dbeCpf: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeTelefone: TDBEdit;
    Label5: TLabel;
    dbeEmail: TDBEdit;
    Label6: TLabel;
    dbeCep: TDBEdit;
    Label7: TLabel;
    dbeLogradouro: TDBEdit;
    Label8: TLabel;
    dbeNumero: TDBEdit;
    dbeComplemento: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    dbeBairro: TDBEdit;
    Label11: TLabel;
    dbeCidade: TDBEdit;
    dbeUF: TDBEdit;
    Label12: TLabel;
    dbePais: TDBEdit;
    Label13: TLabel;
    dsCadastro: TDataSource;
    btnConsultaCep: TBitBtn;
    btnSalvar: TBitBtn;
    btnNovo: TBitBtn;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    dsConfigEmail: TDataSource;
    pnlConfigEmail: TPanel;
    dbeOrigem: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    dbeSmtp: TDBEdit;
    Label16: TLabel;
    dbeUsuario: TDBEdit;
    Label17: TLabel;
    dbeSenha: TDBEdit;
    Label18: TLabel;
    dbePorta: TDBEdit;
    rgAutenticacao: TRadioGroup;
    procedure btnSairClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultaCepClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEnviarEmailClick(Sender: TObject);
    procedure rgAutenticacaoClick(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
  private
    { Private declarations }
    jsonRaiz : TJSONObject;
    vArquivoXml : string;
    procedure Limpa_Campos(tipo : char);
    function SomenteNumeros(texto: string): string;
    function ValidaJsonRetorno : boolean;
    procedure HabilitaBotoes(vEstado : Boolean);
    function GeraXml : Boolean;
    function EnviaEmail : Boolean;
    function ExisteDLL_SSL: Boolean;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UDmDados;

{$R *.dfm}

procedure TfrmPrincipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;
procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  vArquivoXml := (ExtractFileDir(Application.ExeName) + '\cadastro.xml');
  btnNovo.SetFocus;
end;

function TfrmPrincipal.GeraXml: Boolean;
var XMLEnv: TXMLDocument;
    NodeCadastro, NodeEndereco: IXMLNode;
begin
  Result:=True;
  try
    XMLEnv := TXMLDocument.Create(nil);
    XMLEnv.Active := True;
    NodeCadastro := XMLEnv.AddChild('Cadastro');
    NodeCadastro.ChildValues['Nome'] := dmDados.cdsCadastroNome.AsString;
    NodeCadastro.ChildValues['Identidade'] := dmDados.cdsCadastroIdentidade.AsString;
    NodeCadastro.ChildValues['CPF'] := dmDados.cdsCadastroCPF.AsString;
    NodeCadastro.ChildValues['Telefone'] := dmDados.cdsCadastroTelefone.AsString;
    NodeCadastro.ChildValues['Email'] := dmDados.cdsCadastroEmail.AsString;
    NodeEndereco := NodeCadastro.AddChild('Endereco');
    NodeEndereco.ChildValues['Cep'] := dmDados.cdsCadastroCEP.AsString;
    NodeEndereco.ChildValues['Logradouro'] := dmDados.cdsCadastroLogradouro.AsString;
    NodeEndereco.ChildValues['Numero'] := dmDados.cdsCadastroNumero.AsString;
    NodeEndereco.ChildValues['Complemento'] := dmDados.cdsCadastroComplemento.AsString;
    NodeEndereco.ChildValues['Bairro'] := dmDados.cdsCadastroBairro.AsString;
    NodeEndereco.ChildValues['Cidade'] := dmDados.cdsCadastroCidade.AsString;
    NodeEndereco.ChildValues['Estado'] := dmDados.cdsCadastroUF.AsString;
    NodeEndereco.ChildValues['Pais'] := dmDados.cdsCadastropais.AsString;
    if FileExists(vArquivoXml) then
      DeleteFile(vArquivoXml);
    XMLEnv.SaveToFile(vArquivoXml);
  except on e:Exception do
   begin
     Result:=False;
     Application.MessageBox(PChar('Erro ao gerar arquivo XML!'),
       PChar(Application.Title), MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
   end;
  end;
end;

procedure TfrmPrincipal.HabilitaBotoes(vEstado: Boolean);
begin
  btnNovo.Enabled := vEstado;
  btnSalvar.Enabled := not(vEstado);
  btnEnviarEmail.Enabled:=vEstado;
  btnLimpar.Enabled:=not(vEstado);
  grbPrincipal.Enabled:=not(vEstado);
  grbEndereco.Enabled:=not(vEstado);
  btnConsultaCep.Enabled:=not(vEstado);
  pnlConfigEmail.Enabled:=not(vEstado);
end;

procedure TfrmPrincipal.btnConsultaCepClick(Sender: TObject);
var vUrl    : string;
    vCep    : string;
    vRetCod : Integer;
    vRetMsg : string;
begin
  vCep:=SomenteNumeros(dmDados.cdsCadastroCEP.AsString);
  if Length(vCep) <> 8 then
  begin
    Application.MessageBox(PChar('O CEP deve conter 8 dígitos!'),
      PChar(Application.Title), MB_OK + MB_ICONWARNING + MB_DEFBUTTON2);
    dbeCep.SetFocus;
  end
  else
  begin
    try
      vUrl := 'https://viacep.com.br/ws/'+vcep+'/json/';
      with dmDados do
      begin
        RESTClient1.BaseURL:=vUrl;
        RESTRequest1.Method:=rmGET;
        RESTRequest1.Params.Clear;
        RESTRequest1.ClearBody;
        RESTRequest1.Execute;
        vRetCod:=RESTResponse1.StatusCode;
        if vRetCod <> 200 then //diferente de sucesso
        begin
          vRetMsg := RESTResponse1.StatusText;
          Application.MessageBox(PChar('Retorno: '+IntToStr(vRetCod)+' '+vRetMsg),
            PChar(Application.Title), MB_OK + MB_ICONWARNING + MB_DEFBUTTON2);
        end
        else
        begin
          jsonRaiz := TJSONObject.ParseJSONValue(RESTResponse1.JSONValue.ToString) as TJSONObject;
          if not (ValidaJsonRetorno) then
          begin
            Application.MessageBox(PChar('Cep não encontrado!'),
              PChar(Application.Title), MB_OK + MB_ICONWARNING +
              MB_DEFBUTTON2);
            Limpa_Campos('E');
          end;
        end;
      end;
    except on e: exception do
     begin
       Application.MessageBox(PChar('Erro ao consumir Api: '+e.Message),
         PChar(Application.Title), MB_OK + MB_ICONSTOP + MB_DEFBUTTON2);
     end;
    end;
  end;
end;

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
begin
  if (dmDados.cdsCadastro.State = dsEdit) or
     (dmDados.cdsCadastro.State = dsInsert) then
  begin
    HabilitaBotoes(True);
    dmDados.cdsCadastro.Post;
    Application.MessageBox(PChar('Registro salvo com sucesso!'),
      PChar(Application.Title), MB_OK + MB_ICONINFORMATION + MB_DEFBUTTON2);
  end;
  if (dmDados.cdsConfigEmail.State = dsEdit) or
     (dmDados.cdsConfigEmail.State = dsInsert) then
    dmDados.cdsConfigEmail.Post;
end;

procedure TfrmPrincipal.btnNovoClick(Sender: TObject);
begin
  pcPrincipal.ActivePageIndex:=0;
  HabilitaBotoes(False);
  Limpa_Campos('T');
  dmDados.cdsCadastro.Edit;
  dmDados.cdsConfigEmail.Edit;
  if dmDados.cdsConfigEmailemail.AsString = '' then
    dmDados.cdsConfigEmailemail.AsString := 'teste@gmail.com';
  if dmDados.cdsConfigEmailusuario.AsString = '' then
    dmDados.cdsConfigEmailusuario.AsString := 'teste@gmail.com';
  if dmDados.cdsConfigEmailautentic.AsString = '' then
    dmDados.cdsConfigEmailautentic.AsString := 'T';
  if dmDados.cdsConfigEmailsmtp.AsString = '' then
    dmDados.cdsConfigEmailsmtp.AsString := 'smtp.gmail.com';
  if dmDados.cdsConfigEmailporta.AsString = '' then
    dmDados.cdsConfigEmailporta.AsInteger := 587;
end;

procedure TfrmPrincipal.btnEnviarEmailClick(Sender: TObject);
begin
  if not(dmDados.cdsCadastro.IsEmpty) then
  begin
    if (GeraXml) and (EnviaEmail) then
      Application.MessageBox(PChar('Email enviado com sucesso!'),
        PChar(Application.Title), MB_OK + MB_ICONINFORMATION + MB_DEFBUTTON2);
  end
  else
  begin
    Application.MessageBox(PChar('Não há registro salvo para envio!'),
      PChar(Application.Title), MB_OK + MB_ICONWARNING + MB_DEFBUTTON2);
  end;
end;

procedure TfrmPrincipal.btnLimparClick(Sender: TObject);
begin
  if Application.MessageBox(PChar('Deseja limpar os dados do formulário?'),
    PChar(Application.Title), MB_YESNO + MB_ICONWARNING + MB_DEFBUTTON2) =
    IDYES then
  begin
    Limpa_Campos('T');
    dmDados.cdsCadastro.EmptyDataSet;
    HabilitaBotoes(True);
  end;
end;

procedure TfrmPrincipal.Limpa_Campos(tipo : char);
// TIPO = (T) Todos (E) Endereço
var
i : Integer;
begin
  for i := 0 to Self.ComponentCount -1 do
  begin
    if Self.Components[i] is TDBEdit then
    begin
      if ((tipo = 'E') and ((self.Components[i] as TDBEdit).Tag = 1))//tag 1 = campos do endereço
          or (tipo = 'T') then
       (self.Components[i] as TDBEdit).Text := '';
    end;
  end;
  if (tipo = 'E') then
  begin
   dbeCep.SetFocus;
   dbeCep.SelectAll;
  end
  else
   dbeNome.SetFocus;
end;
procedure TfrmPrincipal.pcPrincipalChange(Sender: TObject);
begin
  if dmDados.cdsConfigEmailautentic.AsString = 'S' then
    rgAutenticacao.ItemIndex:=0
  else if dmDados.cdsConfigEmailautentic.AsString = 'T' then
    rgAutenticacao.ItemIndex:=1
  else
    rgAutenticacao.ItemIndex:=2;
end;

procedure TfrmPrincipal.rgAutenticacaoClick(Sender: TObject);
begin
  case rgAutenticacao.ItemIndex of
    0: dmDados.cdsConfigEmailautentic.AsString := 'S';
    1: dmDados.cdsConfigEmailautentic.AsString := 'T';
    2: dmDados.cdsConfigEmailautentic.AsString := 'N';
  end;
end;

function TfrmPrincipal.SomenteNumeros(texto: string): string;
var i: Integer;
    texto_aux: string;
begin
  texto_aux := '';
  for i:=1 to Length(texto) do
  begin
    if (texto[i] in ['0'..'9']) then
      texto_aux := texto_aux + texto[i];
  end;
  Result := texto_aux;
end;
function TfrmPrincipal.ValidaJsonRetorno: boolean;
begin
  try
    Result:=True;
    if Assigned(jsonRaiz) then
    begin
      if(jsonRaiz <> nil)then
      begin
        if Assigned(jsonRaiz.Values['erro']) and
           (jsonRaiz.Values['erro'].Value = 'true') then
          Result:=False
        else
        begin
          if Assigned(jsonRaiz.Values['logradouro']) then
             dmDados.cdsCadastrologradouro.AsString := jsonRaiz.Values['logradouro'].Value;
          if Assigned(jsonRaiz.Values['complemento']) then
             dmDados.cdsCadastrocomplemento.AsString := jsonRaiz.Values['complemento'].Value;
          if Assigned(jsonRaiz.Values['bairro']) then
             dmDados.cdsCadastrobairro.AsString := jsonRaiz.Values['bairro'].Value;
          if Assigned(jsonRaiz.Values['localidade']) then
             dmDados.cdsCadastrocidade.AsString := jsonRaiz.Values['localidade'].Value;
          if Assigned(jsonRaiz.Values['uf']) then
             dmDados.cdsCadastroUF.AsString := jsonRaiz.Values['uf'].Value;
        end;
      end;
    end
    else
      Result:=False;
  except on e:exception do
   begin
     Result:=False;
   end;
  end;
end;
function TfrmPrincipal.EnviaEmail : Boolean;
var
    IdSMTP1: TIdSMTP;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    IdMessage1: TIdMessage;
    ErroDLL: Boolean;
    i: integer;
    OK: Boolean;
    TipoAutentic: string;
begin
  result := False;
  try
    IdMessage1 := TIdMessage.Create(nil);
    IdMessage1.MessageParts.Clear;
    TIdAttachmentfile.Create(IdMessage1.MessageParts, TFileName(vArquivoXml));
    IdMessage1.From.Address := dmDados.cdsConfigEmailemail.AsString;
    IdMessage1.From.Name := 'InfoCadastro Teste';
    IdMessage1.Subject := 'InfoCadastro - Anexo Cadastro.xml';
    IdMessage1.ContentType := 'multipart/mixed';
    IdMessage1.Priority := mpNormal;
    IdMessage1.IsEncoded := True;
    IdMessage1.AttachmentEncoding := 'MIME';
    IdMessage1.Encoding := meMIME;
    IdMessage1.ConvertPreamble := True;
    IdMessage1.CharSet := 'ISO-8859-1';

    IdMessage1.CCList.Clear;
    IdMessage1.CCList.EMailAddresses := '';
    IdMessage1.Body.Clear;
    IdMessage1.Recipients.Add.Address := dmDados.cdsCadastroemail.AsString;

    // configuração do SMTP
    IdSMTP1 := TIdSMTP.Create(nil);
    IdSMTP1.Host := dmDados.cdsConfigEmailsmtp.AsString;
    IdSMTP1.Port := dmDados.cdsConfigEmailporta.AsInteger;
    TipoAutentic := dmDados.cdsConfigEmailautentic.AsString;

    IdSMTP1.Username := dmDados.cdsConfigEmailusuario.AsString;;
    IdSMTP1.Password := dmDados.cdsConfigEmailsenha.AsString;;
    IdSMTP1.AuthType := satdefault;
    if (TipoAutentic = 'S') or (TipoAutentic = 'T') then
    begin
      IdSSLIOHandlerSocketOpenSSL1 := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
      if TipoAutentic = 'S' then
        IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvSSLv3
      else
        IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1;
      IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmClient;
      IdSSLIOHandlerSocketOpenSSL1.MaxLineAction := maException;
      IdSSLIOHandlerSocketOpenSSL1.ReadTimeout := 30000;
      IdSMTP1.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
      IdSMTP1.UseTLS := utUseRequireTLS;
      ErroDLL := not ExisteDLL_SSL;
      if ErroDLL then
      begin
        Application.MessageBox('Erro ao enviar e-mail! Não foi possível carregar as DLLs libeay32.dll e ssleay32.dll.','Erro',MB_ICONERROR+MB_SYSTEMMODAL);
      end;
    end
    else
    begin
      IdSMTP1.IOHandler := nil;
      ErroDLL := false;
    end;
    if (not ErroDLL) then
    begin
      try
        IdSMTP1.ReadTimeout := 30000;
        IdSMTP1.Connect;
        IdSMTP1.Send(IdMessage1);
        result := True;
      except
        on e:Exception do
        begin
          result := false;
          Application.MessageBox(PWideChar('Erro ao enviar e-mail! Mensagem de erro:'+#13+E.Message),'Erro',MB_ICONERROR+MB_SYSTEMMODAL);
        end;
      end;
    end;
  finally
    try
      if (Assigned(IdSMTP1)) and (IdSMTP1.Connected) then
        IdSMTP1.Disconnect;
    except
    end;
    if Assigned(IdMessage1) then
      FreeAndNil(IdMessage1);
    if Assigned(IdSSLIOHandlerSocketOpenSSL1) then
      FreeAndNil(IdSSLIOHandlerSocketOpenSSL1);
    if Assigned(IdSMTP1) then
      FreeAndNil(IdSMTP1);
  end;
end;
function TfrmPrincipal.ExisteDLL_SSL: Boolean;
var IdSSL, IdCrypto: Integer;
begin
  try
    Result := false;
    IdCrypto := SafeLoadLibrary('libeay32.dll');
    IdSSL := SafeLoadLibrary('ssleay32.dll');
    if (IdCrypto > 0) and (IdSSL > 0 ) then
      Result := true;
  finally
    if IdCrypto > 0 then
      FreeLibrary(IdCrypto);
    if IdSSL > 0 then
      FreeLibrary(IdSSL);
  end;
end;

end.
