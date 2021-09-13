object dmDados: TdmDados
  OldCreateOrder = False
  Height = 349
  Width = 391
  object cdsCadastro: TClientDataSet
    PersistDataPacket.Data = {
      790100009619E0BD01000000180000000D0000000000030000007901044E6F6D
      6501004900000001000557494454480200020064000A4964656E746964616465
      0100490000000100055749445448020002001400034350460100490000000100
      055749445448020002000E0005656D61696C0100490000000100055749445448
      0200020064000874656C65666F6E650100490000000100055749445448020002
      0014000343455001004900000001000557494454480200020009000A6C6F6772
      61646F75726F0100490000000100055749445448020002006400066E756D6572
      6F0100490000000100055749445448020002000A000B636F6D706C656D656E74
      6F01004900000001000557494454480200020032000662616972726F01004900
      0000010005574944544802000200640006636964616465010049000000010005
      5749445448020002006400025546010049000000010005574944544802000200
      0200047061697301004900000001000557494454480200020064000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Identidade'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CPF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'telefone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'logradouro'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'numero'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'complemento'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'bairro'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'cidade'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'pais'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 24
    Top = 8
    object cdsCadastroNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
    object cdsCadastroIdentidade: TStringField
      FieldName = 'Identidade'
    end
    object cdsCadastroCPF: TStringField
      DisplayWidth = 13
      FieldName = 'CPF'
      EditMask = '###.###.###-##'
      Size = 14
    end
    object cdsCadastroemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object cdsCadastrotelefone: TStringField
      FieldName = 'telefone'
      EditMask = '+## (##) # ####-####'
    end
    object cdsCadastroCEP: TStringField
      FieldName = 'CEP'
      EditMask = '#####-###'
      Size = 9
    end
    object cdsCadastrologradouro: TStringField
      FieldName = 'logradouro'
      Size = 100
    end
    object cdsCadastronumero: TStringField
      FieldName = 'numero'
      Size = 10
    end
    object cdsCadastrocomplemento: TStringField
      FieldName = 'complemento'
      Size = 50
    end
    object cdsCadastrobairro: TStringField
      FieldName = 'bairro'
      Size = 100
    end
    object cdsCadastrocidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object cdsCadastroUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsCadastropais: TStringField
      FieldName = 'pais'
      Size = 100
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 24
    Top = 56
  end
  object RESTResponse1: TRESTResponse
    Left = 24
    Top = 72
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Method = rmPOST
    Params = <>
    Response = RESTResponse1
    Timeout = 1200000
    SynchronizedEvents = False
    Left = 24
    Top = 88
  end
  object cdsConfigEmail: TClientDataSet
    PersistDataPacket.Data = {
      AE0000009619E0BD010000001800000006000000000003000000AE0005656D61
      696C0100490000000100055749445448020002006400077573756172696F0100
      4900000001000557494454480200020064000573656E68610100490000000100
      05574944544802000200640008617574656E7469630100490000000100055749
      44544802000200640004736D7470010049000000010005574944544802000200
      640005706F72746104000100000000000000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'usuario'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'senha'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'autentic'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'smtp'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'porta'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 120
    Top = 16
    object cdsConfigEmailemail: TStringField
      FieldName = 'email'
      Size = 100
    end
    object cdsConfigEmailusuario: TStringField
      FieldName = 'usuario'
      Size = 100
    end
    object cdsConfigEmailsenha: TStringField
      FieldName = 'senha'
      Size = 100
    end
    object cdsConfigEmailautentic: TStringField
      FieldName = 'autentic'
      Size = 100
    end
    object cdsConfigEmailsmtp: TStringField
      FieldName = 'smtp'
      Size = 100
    end
    object cdsConfigEmailporta: TIntegerField
      FieldName = 'porta'
    end
  end
end
