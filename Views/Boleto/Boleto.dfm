object FormBoleto: TFormBoleto
  Left = 398
  Top = 237
  BorderStyle = bsDialog
  Caption = 'Demonstra'#231#227'o FreeBoleto'
  ClientHeight = 462
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 5
    Top = 17
    Width = 35
    Height = 15
    Caption = 'Banco'
  end
  object Label2: TLabel
    Left = 125
    Top = 16
    Width = 93
    Height = 15
    Caption = 'C'#243'digo Cedente:'
  end
  object Agencia: TLabel
    Left = 5
    Top = 46
    Width = 44
    Height = 15
    Caption = 'Agencia'
  end
  object Label3: TLabel
    Left = 318
    Top = 155
    Width = 64
    Height = 15
    Caption = 'Vencimento'
  end
  object Label4: TLabel
    Left = 479
    Top = 155
    Width = 27
    Height = 15
    Caption = 'Valor'
  end
  object Label5: TLabel
    Left = 421
    Top = 47
    Width = 82
    Height = 15
    Caption = 'NossoNumero'
  end
  object Label6: TLabel
    Left = 125
    Top = 49
    Width = 84
    Height = 15
    Caption = 'Conta Corrente'
  end
  object Label7: TLabel
    Left = 309
    Top = 46
    Width = 32
    Height = 15
    Caption = 'Digito'
  end
  object Label8: TLabel
    Left = 309
    Top = 16
    Width = 44
    Height = 15
    Caption = 'Carteira'
  end
  object Label9: TLabel
    Left = 5
    Top = 77
    Width = 64
    Height = 15
    Caption = 'Modalidade'
  end
  object Label10: TLabel
    Left = 70
    Top = 96
    Width = 67
    Height = 15
    Caption = '(Banco 151)'
  end
  object Label11: TLabel
    Left = 5
    Top = 123
    Width = 101
    Height = 15
    Caption = 'Nome do Cedente'
  end
  object Label12: TLabel
    Left = 5
    Top = 158
    Width = 50
    Height = 15
    Caption = 'Emiss'#227'o'
  end
  object Label13: TLabel
    Left = 164
    Top = 157
    Width = 67
    Height = 15
    Caption = 'Documento:'
  end
  object Label21: TLabel
    Left = 126
    Top = 77
    Width = 55
    Height = 15
    Caption = 'Conv'#234'nio:'
  end
  object Label22: TLabel
    Left = 222
    Top = 96
    Width = 67
    Height = 15
    Caption = '(Banco 001)'
  end
  object edBanco: TEdit
    Left = 70
    Top = 9
    Width = 49
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = '033'
  end
  object edCodCedente: TEdit
    Left = 222
    Top = 8
    Width = 83
    Height = 23
    TabOrder = 1
    Text = '14813026478'
  end
  object edAgencia: TEdit
    Left = 70
    Top = 41
    Width = 49
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Text = '0148'
  end
  object dtpVencimento: TDateTimePicker
    Left = 388
    Top = 152
    Width = 89
    Height = 23
    Date = 38430.389601956020000000
    Time = 38430.389601956020000000
    Color = 8421631
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object edValor: TEdit
    Left = 512
    Top = 149
    Width = 69
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = '103,58'
  end
  object edNNum: TEdit
    Left = 517
    Top = 37
    Width = 62
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = '4952'
  end
  object Memo1: TMemo
    Left = 3
    Top = 307
    Width = 576
    Height = 92
    TabOrder = 10
  end
  object edContaCorrente: TEdit
    Left = 222
    Top = 41
    Width = 82
    Height = 23
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object edDigitoCC: TEdit
    Left = 359
    Top = 41
    Width = 42
    Height = 23
    TabOrder = 8
  end
  object edCarteira: TEdit
    Left = 359
    Top = 8
    Width = 162
    Height = 23
    TabOrder = 2
  end
  object edModeloCarteira: TEdit
    Left = 71
    Top = 70
    Width = 49
    Height = 23
    Hint = 'Obrigat'#243'rio para o Banco NossaCaixa (151)'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object edNomeCede: TEdit
    Left = 113
    Top = 116
    Width = 468
    Height = 23
    TabOrder = 11
    Text = 'Jos'#233' Jo'#227'o'
  end
  object dtpEmissao: TDateTimePicker
    Left = 68
    Top = 150
    Width = 89
    Height = 23
    Date = 38353.389601956020000000
    Time = 38353.389601956020000000
    TabOrder = 12
  end
  object edDocumento: TEdit
    Left = 233
    Top = 150
    Width = 78
    Height = 23
    TabOrder = 13
    Text = '0123456789'
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 181
    Width = 576
    Height = 117
    Caption = ' Sacado '
    TabOrder = 14
    object Label14: TLabel
      Left = 16
      Top = 24
      Width = 34
      Height = 15
      Caption = 'Nome'
    end
    object Label15: TLabel
      Left = 265
      Top = 23
      Width = 53
      Height = 15
      Caption = 'Endere'#231'o'
    end
    object Label16: TLabel
      Left = 16
      Top = 59
      Width = 33
      Height = 15
      Caption = 'Bairro'
    end
    object Label17: TLabel
      Left = 460
      Top = 48
      Width = 23
      Height = 15
      Caption = 'Cep'
    end
    object Label18: TLabel
      Left = 17
      Top = 89
      Width = 16
      Height = 15
      Caption = 'UF'
    end
    object Label19: TLabel
      Left = 265
      Top = 53
      Width = 40
      Height = 15
      Caption = 'Cidade'
    end
    object Label20: TLabel
      Left = 265
      Top = 84
      Width = 59
      Height = 15
      Caption = 'CNPJ/CPF'
    end
    object edSacado: TEdit
      Left = 65
      Top = 16
      Width = 197
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Manoel Joaquim'
    end
    object edEndereco: TEdit
      Left = 327
      Top = 16
      Width = 230
      Height = 23
      TabOrder = 1
      Text = 'Rua Governador, 1000'
    end
    object edUF: TEdit
      Left = 65
      Top = 78
      Width = 50
      Height = 23
      TabOrder = 4
      Text = 'SP'
    end
    object edBairro: TEdit
      Left = 65
      Top = 49
      Width = 197
      Height = 23
      TabOrder = 2
      Text = 'Centro'
    end
    object edCidade: TEdit
      Left = 327
      Top = 49
      Width = 121
      Height = 23
      TabOrder = 3
      Text = 'S'#227'o Paulo'
    end
    object edCep: TEdit
      Left = 488
      Top = 45
      Width = 69
      Height = 23
      TabOrder = 5
      Text = '01000-000'
    end
    object edCNPJ: TEdit
      Left = 327
      Top = 78
      Width = 166
      Height = 23
      TabOrder = 6
      Text = '00.000.000/0000-00'
    end
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 405
    Width = 576
    Height = 53
    TabOrder = 15
    object Button3: TButton
      Left = 152
      Top = 14
      Width = 135
      Height = 30
      Caption = 'Adicionar Boleto'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 298
      Top = 14
      Width = 135
      Height = 30
      Caption = 'Visualizar de Boletos'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 441
      Top = 14
      Width = 126
      Height = 30
      Caption = 'Limpar Lista'
      TabOrder = 2
      OnClick = Button4Click
    end
    object Button1: TButton
      Left = 3
      Top = 14
      Width = 133
      Height = 30
      Caption = 'Gerar Dados'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object Button5: TButton
    Left = 421
    Top = 353
    Width = 109
    Height = 30
    Caption = 'Gerar && adicionar'
    TabOrder = 16
    Visible = False
    OnClick = Button5Click
  end
  object edConvenio: TEdit
    Left = 222
    Top = 71
    Width = 82
    Height = 23
    Hint = 'Obrigat'#243'rio para o Banco NossaCaixa (151)'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
  end
end
