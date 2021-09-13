object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Cadastro de Clientes'
  ClientHeight = 391
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBotoes: TPanel
    Left = 0
    Top = 336
    Width = 756
    Height = 55
    Align = alTop
    TabOrder = 1
    object btnSair: TBitBtn
      Left = 513
      Top = 1
      Width = 128
      Height = 53
      Align = alLeft
      Caption = 'SAIR'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666B96666BB
        6868693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        9A66669A6666C66A6BD06A6BD26869C368696933349A66669A66669A66669A66
        669A66669A6666FF00FFFF00FFFF00FF9A6666DE7374D77071D56F70D56D6EC7
        6A6D693334FEA2A3FCAFB0FABCBDF9C5C6F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666E07778DB7576DA7475DA7273CC6E7169333439C56525CF6329CC6319CB
        5BF9C5C69A6666FF00FFFF00FFFF00FF9A6666E57D7EE07A7BDF797ADF7778D0
        727569333442C46830CD6733CB6724CB60F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666EA8283E57F80E37D7EE68081D374766933343DC26429CB632FCA6420CA
        5EF9C5C69A6666FF00FFFF00FFFF00FF9A6666F08788E98182EC9697FBDDDED8
        888A693334B8E1AC6BDC895DD58046D473F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666F58C8DEE8687F0999AFDDCDDDA888A693334FFF5D8FFFFE0FFFFDEECFD
        D4F9C5C69A6666FF00FFFF00FFFF00FF9A6666FA9192F48E8FF28B8CF48C8DDC
        7F80693334FDF3D4FFFFDFFFFFDDFFFFE0F9C5C69A6666FF00FFFF00FFFF00FF
        9A6666FE9798F99394F89293F99092E08585693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF9A6666FF9B9CFD9798FC9697FE9798E3
        8889693334FDF3D4FFFFDFFFFFDDFFFFDFF9C5C69A6666FF00FFFF00FFFF00FF
        9A6666FF9FA0FF9A9BFF999AFF9A9BE78C8D693334FDF3D4FFFFDFFFFFDDFFFF
        DFF9C5C69A6666FF00FFFF00FFFF00FF9A66669A6666E98E8FFE999AFF9D9EEB
        8F90693334FBF0D2FDFCDCFDFCDAFDFCDCF9C5C69A6666FF00FFFF00FFFF00FF
        FF00FFFF00FF9A6666B07172D78687DA88886933349A66669A66669A66669A66
        669A66669A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A
        6666693334FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 0
      OnClick = btnSairClick
      ExplicitLeft = 257
    end
    object btnEnviarEmail: TBitBtn
      Left = 257
      Top = 1
      Width = 128
      Height = 53
      Align = alLeft
      Caption = 'ENVIAR EMAIL'
      Enabled = False
      Glyph.Data = {
        D2020000424DD202000000000000D20100002800000010000000100000000100
        08000000000000010000210B0000210B00006700000067000000B6585800A160
        6000AB606000B6606000A16A6000AB6A6000B66A6000B6736000D4846000A16A
        6A00AB6A6A00B66A6A00AB736A00B6736A00C0736A00C07B6A00D4846A00D48F
        6A008F6A7300A1737300B6737300D48F7300E0A17300EAA17300A17B7B00AB7B
        7B00B67B7B00C07B7B00D4987B00EAA17B00FFC07B00987B840098848400C08F
        8400EAAB8400FFCA8400A18F8F00C08F8F00CA8F8F00CA988F00EAB68F00CAA1
        9800F4C09800F4CA98008498A100C0A1A100F4CAA100588FAB007BA1AB00D4B6
        AB0060A1B6006AABB60098ABB600E0B6B600E0C0B600EAD4B600F4D4B6005098
        C0007BB6C000EAD4C000F4E0C0006AABCA008FC0CA00D4CACA00EACACA00EAD4
        CA00EAE0CA008FD4D400EAE0D400F4E0D400F4EAD40058CAE0006ACAE00050D4
        E0006AD4E0008FD4E000C0E0E000E0E0E000F4E0E000FFF4E00050D4EA0060D4
        EA00CAEAEA00E0EAEA00F4EAEA00F4F4EA0050D4F400B6EAF400E0F4F400EAF4
        F400F4F4F400FFFFF400FF00FF0050D4FF0058E0FF0058EAFF0050F4FF0058F4
        FF00F4F4FF0073FFFF00EAFFFF00F4FFFF00FFFFFF005C0D1108101010101010
        10100810055C0D0F1D1E1E1E1E1E1E1E1E1E23160D050D160D2A2B2A2A2A2A2A
        2A2B280D220D0A2E152137373737373737371A1C370A0A3B2E07314241414141
        44290F3C3B0A0C444F280C4044414142360D3755440C0C5455270D1A0A0A0A14
        1A0B3666540D14401A2554544D4D4D4D583F192644140A193566656565646464
        6464582D1A0A04436666656565656564585852573401052466666659534C3E3A
        3332392F12015C001943635147494950505D3D13035C5C5C5C09305F605F5F60
        5E2C0A5C5C5C5C5C5C5C0320485F5F481F035C5C5C5C5C5C5C5C5C5C0A18180A
        5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C}
      TabOrder = 1
      OnClick = btnEnviarEmailClick
      ExplicitLeft = 251
      ExplicitTop = 0
    end
    object btnLimpar: TBitBtn
      Left = 385
      Top = 1
      Width = 128
      Height = 53
      Align = alLeft
      Caption = 'LIMPAR'
      Enabled = False
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
        6666666666666666666666660000666666666666666666666666666666666666
        00006FF6FF6666666666666666666666666666660000FFFFFFFF666666666666
        66666666666666660000FFFFFF8111666666666666666888666666660000FFFF
        F89111166666666666668888866666660000FFFFF91911116666666666688888
        886666660000FF6F619991110666666666687888888666660000F66669191910
        8066666666688788888866660000666666919103780666666666887888788666
        00006666666910BB3780666666666888778788660000666666663BF7B3780666
        66666687F778788600006666666663BF7B303066666666687F77888800006666
        6666663BFB0333666666666687F788880000666666666663B37B336666666666
        68787788000066666666666637BBB36666666666668777780000666666666666
        63FBBB66666666666668F7770000666666666666663FBB666666666666668F77
        0000}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = btnLimparClick
      ExplicitLeft = 129
    end
    object btnSalvar: TBitBtn
      Left = 129
      Top = 1
      Width = 128
      Height = 53
      Align = alLeft
      Caption = 'SALVAR'
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000430B0000430B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF943131FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF943131FF00FFFF00FFFF00FF
        B57373FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFB57373FF00FFFF00FFFF00FFFF00FFFF00FFAD5A5AAD5A5AE7C6C6E7C6C6E7
        C6C6C6CEC6C6CEC6C6CEC6AD5A5A943131FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD7B73C65A5AE7C6C69C3939B57373C6CEC6F7F7F7F7F7F7C65A5A9431
        31FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD7B73C65A5AC6948C9C39399C
        4A4AE7C6C6C6C6C6F7F7F7C65A5A943131FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD7B73C65A5AC6948CC6948CBDA5A5BDA5A5E7C6C6C6CEC6C65A5A9431
        31FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD7B73AD524AB55A5AC65A5AC6
        5A5AC65A5AC65A5AC65A5AC65A5A943131FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD7B73AD524AFFF7F7FFF7F7FFF7F7FFF7F7FFF7F7FFF7F7C65A5A9431
        31FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD7B73AD524AFFF7F7FFF7F7FF
        F7F7FFF7F7FFFFF7FFF7F7C65A5A943131FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD7B73AD524AFFF7F7FFF7F7FFF7F7FFF7F7FFFFF7FFF7F7C65A5A9431
        31FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFBD7B73AD524AFFF7F7FFF7F7FF
        FFF7FFFFF7FFFFF7FFF7F7C65A5A943131FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFBD7B73AD524AD6D6D6CEB5B5CEB5B5CEB5B5CEB5B5D6D6D6AD524A9431
        31FF00FFFF00FFFF00FFFF00FFFF00FFB57373FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFB57373FF00FFFF00FFFF00FF943131
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF943131FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 3
      OnClick = btnSalvarClick
      ExplicitLeft = 97
      ExplicitTop = 0
    end
    object btnNovo: TBitBtn
      Left = 1
      Top = 1
      Width = 128
      Height = 53
      Align = alLeft
      Caption = 'NOVO'
      Glyph.Data = {
        A6010000424DA601000000000000A60000002800000010000000100000000100
        08000000000000010000210B0000210B00001C0000001C00000000000000FFFF
        FF00FF00FF00FBFBFB00F7F7F700F3F3F300EEEEEE00EAEAEA00E6E6E600E2E2
        E200DEDEDE00DADADA00D6D6D600D2D2D200CECECE00C9C9C900C5C5C500C1C1
        C100BDBDBD00B9B9B900B5B5B500B1B1B100ADADAD00A9A9A900A0A0A0009C9C
        9C0098989800FFFFFF0002021919191919191919191919191902020215070A0B
        0C0D0E101111110F190202021507090A0B0C0E10101111101902020214050809
        0A0B0C0D1010111019020202140508090A0A0C0C0D1010111902020212030508
        08090A0B0C0D1010190202021101040508090A0A0B0D0E0E1902020210010304
        0608090A0A0B0C0D1902020210010103040508090A0B0C0C190202020F010101
        03050608090A0A0C190202020F0101010103050606070C13190202020E010101
        0101040408161819190202020E010101010101030B1A15191A0202020C010101
        010101010B181318020202020E030404040404040B181702020202020E0D0D0D
        0D0E0E0D101902020202}
      TabOrder = 4
      OnClick = btnNovoClick
      ExplicitLeft = 4
      ExplicitTop = 2
    end
  end
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 756
    Height = 336
    ActivePage = TabCadastro
    Align = alTop
    TabOrder = 0
    OnChange = pcPrincipalChange
    object TabCadastro: TTabSheet
      Caption = 'Cadastro'
      object grbEndereco: TGroupBox
        Left = 0
        Top = 137
        Width = 748
        Height = 169
        Align = alTop
        Caption = 'Endere'#231'o'
        Enabled = False
        TabOrder = 1
        object Label6: TLabel
          Left = 16
          Top = 16
          Width = 19
          Height = 13
          Caption = 'CEP'
        end
        object Label7: TLabel
          Left = 16
          Top = 64
          Width = 55
          Height = 13
          Caption = 'Logradouro'
        end
        object Label8: TLabel
          Left = 343
          Top = 64
          Width = 37
          Height = 13
          Caption = 'N'#250'mero'
        end
        object Label9: TLabel
          Left = 471
          Top = 64
          Width = 65
          Height = 13
          Caption = 'Complemento'
        end
        object Label10: TLabel
          Left = 16
          Top = 112
          Width = 28
          Height = 13
          Caption = 'Bairro'
        end
        object Label11: TLabel
          Left = 207
          Top = 112
          Width = 33
          Height = 13
          Caption = 'Cidade'
        end
        object Label12: TLabel
          Left = 471
          Top = 112
          Width = 13
          Height = 13
          Caption = 'UF'
        end
        object Label13: TLabel
          Left = 511
          Top = 112
          Width = 19
          Height = 13
          Caption = 'Pa'#237's'
        end
        object dbeCep: TDBEdit
          Left = 16
          Top = 32
          Width = 106
          Height = 21
          DataField = 'CEP'
          DataSource = dsCadastro
          MaxLength = 9
          TabOrder = 0
        end
        object dbeLogradouro: TDBEdit
          Tag = 1
          Left = 16
          Top = 80
          Width = 321
          Height = 21
          DataField = 'logradouro'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object dbeNumero: TDBEdit
          Tag = 1
          Left = 343
          Top = 80
          Width = 122
          Height = 21
          DataField = 'numero'
          DataSource = dsCadastro
          TabOrder = 2
        end
        object dbeComplemento: TDBEdit
          Tag = 1
          Left = 471
          Top = 80
          Width = 122
          Height = 21
          DataField = 'complemento'
          DataSource = dsCadastro
          TabOrder = 3
        end
        object dbeBairro: TDBEdit
          Tag = 1
          Left = 16
          Top = 128
          Width = 185
          Height = 21
          DataField = 'bairro'
          DataSource = dsCadastro
          TabOrder = 4
        end
        object dbeCidade: TDBEdit
          Tag = 1
          Left = 207
          Top = 128
          Width = 258
          Height = 21
          DataField = 'cidade'
          DataSource = dsCadastro
          TabOrder = 5
        end
        object dbeUF: TDBEdit
          Tag = 1
          Left = 471
          Top = 128
          Width = 34
          Height = 21
          DataField = 'UF'
          DataSource = dsCadastro
          TabOrder = 6
        end
        object dbePais: TDBEdit
          Tag = 1
          Left = 511
          Top = 128
          Width = 226
          Height = 21
          DataField = 'pais'
          DataSource = dsCadastro
          TabOrder = 7
        end
        object btnConsultaCep: TBitBtn
          Left = 128
          Top = 30
          Width = 81
          Height = 25
          Caption = 'Consultar'
          Enabled = False
          Glyph.Data = {
            7E020000424D7E020000000000007E0100002800000010000000100000000100
            08000000000000010000030F0000030F000052000000520000008F2300009823
            0000982A000050310000A1310000B6400000C04000001C48000016500000AB50
            00000058000011580000B658000000600000AB600000CA600000006A00001C6A
            0000B66A0000507300006A730000A1730000E0730000F4730000237B00008F23
            030003500300B66A0300607B0300FF840300AB3806002A500600FF8F06008F2A
            0B00A12A0B00B6400B00168F0B00CA980B0073381100584811001C981100AB38
            16004850160040601600CAA116006A2A1C006A401C0023A11C00AB402300AB48
            2300C048230031A123001CAB230058382A0084382A00B6482A00CA842A00AB58
            310006B63100FFC04000844848008F6048001CC0480038C048006A58500060C0
            50006AB658002ACA5800986A60008F7B600048D460008FCA6A0040D46A0098B6
            73007BD47300CAE07B008FE08400ABF498008FF4A100CAFFAB00FF00FF00FFFF
            FF00505050505050505050505050505050505050505050505050505050505050
            505050505050505045443C3950505050505050505050503D3137373640505050
            505050505050392321262229322D50505050505050391E000207030119303550
            5050505039360206090D0B0504272E35505050503936060F1418120E0B1A2A39
            5050505039360C2428251D16110A1F2A5050505036391C3A3E413B2013100808
            50505050453934434C4E4B2C15112B4550505050504542464D4F482F171B4550
            5050505050504549474A3F333845505050505050505050454544454545505050
            5050505050505050505050505050505050505050505050505050505050505050
            5050}
          TabOrder = 8
          OnClick = btnConsultaCepClick
        end
      end
      object grbPrincipal: TGroupBox
        Left = 0
        Top = 0
        Width = 748
        Height = 137
        Align = alTop
        Caption = 'Geral'
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 24
          Width = 27
          Height = 13
          Caption = 'Nome'
        end
        object Label2: TLabel
          Left = 343
          Top = 24
          Width = 52
          Height = 13
          Caption = 'Identidade'
        end
        object Label3: TLabel
          Left = 471
          Top = 24
          Width = 19
          Height = 13
          Caption = 'CPF'
        end
        object Label4: TLabel
          Left = 471
          Top = 72
          Width = 78
          Height = 13
          Caption = 'Telefone Celular'
        end
        object Label5: TLabel
          Left = 16
          Top = 72
          Width = 24
          Height = 13
          Caption = 'Email'
        end
        object dbeNome: TDBEdit
          Left = 16
          Top = 40
          Width = 321
          Height = 21
          DataField = 'Nome'
          DataSource = dsCadastro
          TabOrder = 0
        end
        object dbeIdent: TDBEdit
          Left = 343
          Top = 40
          Width = 122
          Height = 21
          DataField = 'Identidade'
          DataSource = dsCadastro
          TabOrder = 1
        end
        object dbeCpf: TDBEdit
          Left = 471
          Top = 40
          Width = 119
          Height = 21
          DataField = 'CPF'
          DataSource = dsCadastro
          MaxLength = 14
          TabOrder = 2
        end
        object dbeTelefone: TDBEdit
          Left = 471
          Top = 88
          Width = 118
          Height = 21
          DataField = 'telefone'
          DataSource = dsCadastro
          MaxLength = 20
          TabOrder = 4
        end
        object dbeEmail: TDBEdit
          Left = 16
          Top = 88
          Width = 449
          Height = 21
          DataField = 'email'
          DataSource = dsCadastro
          TabOrder = 3
        end
      end
    end
    object TabConfiguracoes: TTabSheet
      Caption = 'Configura'#231#245'es Email'
      ImageIndex = 1
      object pnlConfigEmail: TPanel
        Left = 0
        Top = 0
        Width = 748
        Height = 308
        Align = alClient
        Enabled = False
        TabOrder = 0
        ExplicitLeft = 40
        ExplicitTop = 80
        ExplicitWidth = 185
        ExplicitHeight = 41
        object Label14: TLabel
          Left = 16
          Top = 8
          Width = 61
          Height = 13
          Caption = 'Email Origem'
        end
        object Label15: TLabel
          Left = 16
          Top = 56
          Width = 69
          Height = 13
          Caption = 'Servidor SMTP'
        end
        object Label16: TLabel
          Left = 16
          Top = 104
          Width = 36
          Height = 13
          Caption = 'Usu'#225'rio'
        end
        object Label17: TLabel
          Left = 16
          Top = 152
          Width = 30
          Height = 13
          Caption = 'Senha'
        end
        object Label18: TLabel
          Left = 16
          Top = 200
          Width = 26
          Height = 13
          Caption = 'Porta'
        end
        object dbeOrigem: TDBEdit
          Left = 16
          Top = 29
          Width = 321
          Height = 21
          DataField = 'email'
          DataSource = dsConfigEmail
          TabOrder = 0
        end
        object dbeSmtp: TDBEdit
          Left = 16
          Top = 77
          Width = 321
          Height = 21
          DataField = 'smtp'
          DataSource = dsConfigEmail
          TabOrder = 1
        end
        object dbeUsuario: TDBEdit
          Left = 16
          Top = 120
          Width = 321
          Height = 21
          DataField = 'usuario'
          DataSource = dsConfigEmail
          TabOrder = 2
        end
        object dbeSenha: TDBEdit
          Left = 16
          Top = 168
          Width = 321
          Height = 21
          DataField = 'senha'
          DataSource = dsConfigEmail
          PasswordChar = '*'
          TabOrder = 3
        end
        object dbePorta: TDBEdit
          Left = 16
          Top = 216
          Width = 61
          Height = 21
          DataField = 'porta'
          DataSource = dsConfigEmail
          TabOrder = 4
        end
        object rgAutenticacao: TRadioGroup
          Left = 83
          Top = 202
          Width = 254
          Height = 105
          Caption = 'Requer Autenticacao?'
          ItemIndex = 1
          Items.Strings = (
            'SSL'
            'TLS'
            'NENHUM')
          TabOrder = 5
          OnClick = rgAutenticacaoClick
        end
      end
    end
  end
  object dsCadastro: TDataSource
    DataSet = dmDados.cdsCadastro
    Left = 292
    Top = 177
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 208
    Top = 368
  end
  object dsConfigEmail: TDataSource
    DataSet = dmDados.cdsConfigEmail
    Left = 436
    Top = 184
  end
end
