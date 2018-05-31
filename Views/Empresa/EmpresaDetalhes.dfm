inherited FormEmpresaDetalhes: TFormEmpresaDetalhes
  Caption = 'Empresa'
  ClientHeight = 546
  ExplicitTop = -121
  ExplicitWidth = 669
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 497
    ExplicitHeight = 497
    inherited tabPrincipal: TPageControl
      Height = 495
      ExplicitWidth = 651
      ExplicitHeight = 495
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 643
        ExplicitHeight = 467
        inherited grdEntidade: TDBGrid
          Height = 396
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RazaoSocial'
              Width = 519
              Visible = True
            end>
        end
        inherited pnlInferior: TPanel
          Top = 445
          ExplicitTop = 445
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 643
        ExplicitHeight = 467
        object lbRazaoSocial: TLabel
          Left = 7
          Top = 11
          Width = 68
          Height = 13
          Caption = 'RazaoSocial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbNome: TLabel
          Left = 7
          Top = 43
          Width = 32
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCNPJ: TLabel
          Left = 7
          Top = 75
          Width = 27
          Height = 13
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbInscricaoEstadual: TLabel
          Left = 7
          Top = 107
          Width = 78
          Height = 13
          Caption = 'Insc. Estadual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbIncricaoMunicipal: TLabel
          Left = 7
          Top = 139
          Width = 83
          Height = 13
          Caption = 'Insc. Municipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbSite: TLabel
          Left = 7
          Top = 427
          Width = 22
          Height = 13
          Caption = 'Site'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEmail: TLabel
          Left = 7
          Top = 395
          Width = 30
          Height = 13
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTelefone: TLabel
          Left = 7
          Top = 363
          Width = 49
          Height = 13
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCEP: TLabel
          Left = 7
          Top = 331
          Width = 20
          Height = 13
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbComplemento: TLabel
          Left = 7
          Top = 299
          Width = 79
          Height = 13
          Caption = 'Complemento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbUF: TLabel
          Left = 7
          Top = 267
          Width = 14
          Height = 13
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCidade: TLabel
          Left = 7
          Top = 235
          Width = 38
          Height = 13
          Caption = 'Cidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbBairro: TLabel
          Left = 7
          Top = 203
          Width = 34
          Height = 13
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEndereco: TLabel
          Left = 7
          Top = 171
          Width = 52
          Height = 13
          Caption = 'Endere'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 326
          Top = 237
          Width = 67
          Height = 13
          Caption = 'C'#243'digo IBGE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 408
          Top = 171
          Width = 13
          Height = 13
          Caption = 'N'#186
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtRazaoSocial: TEdit
          Left = 97
          Top = 8
          Width = 392
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPress
        end
        object edtNome: TEdit
          Left = 97
          Top = 40
          Width = 392
          Height = 21
          TabOrder = 1
          OnKeyPress = EditPress
        end
        object edtCNPJ: TEdit
          Left = 97
          Top = 72
          Width = 160
          Height = 21
          TabOrder = 2
        end
        object edtInscricaoEstadual: TEdit
          Left = 97
          Top = 104
          Width = 160
          Height = 21
          TabOrder = 3
        end
        object edtIncricaoMunicipal: TEdit
          Left = 97
          Top = 136
          Width = 160
          Height = 21
          TabOrder = 4
        end
        object edtEndereco: TEdit
          Left = 97
          Top = 168
          Width = 305
          Height = 21
          TabOrder = 5
          OnKeyPress = EditPress
        end
        object edtBairro: TEdit
          Left = 97
          Top = 200
          Width = 392
          Height = 21
          TabOrder = 6
          OnKeyPress = EditPress
        end
        object edtCidade: TEdit
          Left = 97
          Top = 232
          Width = 223
          Height = 21
          TabOrder = 7
          OnKeyPress = EditPress
        end
        object edtUF: TEdit
          Left = 97
          Top = 264
          Width = 40
          Height = 21
          TabOrder = 8
          OnKeyPress = EditPress
        end
        object edtComplemento: TEdit
          Left = 97
          Top = 301
          Width = 392
          Height = 21
          TabOrder = 9
          OnKeyPress = EditPress
        end
        object edtCEP: TEdit
          Left = 97
          Top = 328
          Width = 100
          Height = 21
          TabOrder = 10
        end
        object edtTelefone: TEdit
          Left = 97
          Top = 360
          Width = 392
          Height = 21
          TabOrder = 11
        end
        object edtEmail: TEdit
          Left = 97
          Top = 392
          Width = 392
          Height = 21
          TabOrder = 12
        end
        object edtSite: TEdit
          Left = 97
          Top = 424
          Width = 392
          Height = 21
          TabOrder = 13
        end
        object edtCodigoMunicipio: TEdit
          Left = 398
          Top = 232
          Width = 91
          Height = 21
          TabOrder = 14
          OnKeyPress = EditPress
        end
        object edtNumero: TEdit
          Left = 426
          Top = 168
          Width = 63
          Height = 21
          TabOrder = 15
          OnKeyPress = EditPress
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Certificado'
        ImageIndex = 2
        ExplicitLeft = 3
        object Label2: TLabel
          Left = 8
          Top = 32
          Width = 61
          Height = 13
          Caption = 'Certificado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 8
          Top = 72
          Width = 35
          Height = 13
          Caption = 'Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 112
          Width = 45
          Height = 13
          Caption = 'N'#186' S'#233'rie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtCertificado: TEdit
          Left = 73
          Top = 24
          Width = 392
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPress
        end
        object edtCertificadoSenha: TEdit
          Left = 73
          Top = 64
          Width = 203
          Height = 21
          TabOrder = 1
          OnKeyPress = EditPress
        end
        object edtCertificadoNumeroSerie: TEdit
          Left = 73
          Top = 104
          Width = 392
          Height = 21
          TabOrder = 2
          OnKeyPress = EditPress
        end
      end
    end
  end
end
