unit UDmDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Datasnap.DBClient, IPPeerClient,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TdmDados = class(TDataModule)
    cdsCadastro: TClientDataSet;
    cdsCadastroNome: TStringField;
    cdsCadastroIdentidade: TStringField;
    cdsCadastroCPF: TStringField;
    cdsCadastroemail: TStringField;
    cdsCadastrotelefone: TStringField;
    cdsCadastroCEP: TStringField;
    cdsCadastrologradouro: TStringField;
    cdsCadastronumero: TStringField;
    cdsCadastrocomplemento: TStringField;
    cdsCadastrobairro: TStringField;
    cdsCadastrocidade: TStringField;
    cdsCadastroUF: TStringField;
    cdsCadastropais: TStringField;
    RESTClient1: TRESTClient;
    RESTResponse1: TRESTResponse;
    RESTRequest1: TRESTRequest;
    cdsConfigEmail: TClientDataSet;
    cdsConfigEmailemail: TStringField;
    cdsConfigEmailusuario: TStringField;
    cdsConfigEmailsenha: TStringField;
    cdsConfigEmailautentic: TStringField;
    cdsConfigEmailsmtp: TStringField;
    cdsConfigEmailporta: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
