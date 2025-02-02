inherited FormCaixaDetalhes: TFormCaixaDetalhes
  Caption = 'Caixa'
  ClientWidth = 932
  FormStyle = fsStayOnTop
  ExplicitWidth = 948
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 932
    ExplicitWidth = 932
    inherited tabPrincipal: TPageControl
      Width = 930
      ActivePage = TabSheet2
      ExplicitWidth = 930
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 922
        ExplicitHeight = 0
        inherited grdEntidade: TDBGrid
          Width = 922
        end
        inherited pnlSuperior: TPanel
          Width = 922
          ExplicitWidth = 922
        end
        inherited pnlInferior: TPanel
          Width = 922
          ExplicitWidth = 922
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 922
        ExplicitHeight = 464
        object lbDescricao: TLabel
          Left = 7
          Top = 20
          Width = 46
          Height = 13
          Caption = 'Descricao'
        end
        object Label1: TLabel
          Left = 6
          Top = 52
          Width = 31
          Height = 13
          Caption = 'Status'
        end
        object lbCodificacao: TLabel
          Left = 6
          Top = 87
          Width = 26
          Height = 13
          Caption = 'Saldo'
          Visible = False
        end
        object edtDescricao: TEdit
          Left = 87
          Top = 16
          Width = 482
          Height = 21
          TabOrder = 0
        end
        object cboStatus: TComboBox
          Left = 87
          Top = 49
          Width = 99
          Height = 21
          TabOrder = 1
        end
        object edtValorSaldo: TEdit
          Left = 86
          Top = 81
          Width = 100
          Height = 21
          TabOrder = 2
          Visible = False
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 108
          Width = 633
          Height = 110
          Caption = 'Informa'#231#245'es banc'#225'rias'
          TabOrder = 3
          object Label9: TLabel
            Left = 6
            Top = 35
            Width = 79
            Height = 20
            AutoSize = False
            Caption = 'Codigo Banco'
          end
          object Label10: TLabel
            Left = 197
            Top = 35
            Width = 77
            Height = 20
            AutoSize = False
            Caption = 'Ag'#234'ncia'
          end
          object Label11: TLabel
            Left = 392
            Top = 35
            Width = 86
            Height = 20
            AutoSize = False
            Caption = 'Conta Corrente'
          end
          object Label12: TLabel
            Left = 559
            Top = 35
            Width = 36
            Height = 20
            AutoSize = False
            Caption = 'Digito'
          end
          object Label5: TLabel
            Left = 6
            Top = 61
            Width = 79
            Height = 20
            AutoSize = False
            Caption = 'Cendente'
          end
          object Label6: TLabel
            Left = 197
            Top = 57
            Width = 77
            Height = 20
            AutoSize = False
            Caption = 'NossoNumero'
          end
          object Label8: TLabel
            Left = 393
            Top = 61
            Width = 86
            Height = 20
            AutoSize = False
            Caption = 'Carteira'
          end
          object Label2: TLabel
            Left = 6
            Top = 86
            Width = 79
            Height = 19
            AutoSize = False
            Caption = 'Taxa'
          end
          object Label3: TLabel
            Left = 199
            Top = 83
            Width = 79
            Height = 19
            AutoSize = False
            Caption = 'Convenio'
          end
          object edtAgencia: TEdit
            Left = 293
            Top = 29
            Width = 89
            Height = 20
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object edtConta: TEdit
            Left = 485
            Top = 29
            Width = 64
            Height = 20
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edtDigito: TEdit
            Left = 595
            Top = 29
            Width = 29
            Height = 20
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edtCendente: TEdit
            Left = 91
            Top = 55
            Width = 89
            Height = 20
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object edtNossoNumero: TEdit
            Left = 293
            Top = 55
            Width = 89
            Height = 20
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edtCarteira: TEdit
            Left = 485
            Top = 55
            Width = 64
            Height = 20
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object edtCodigoBanco: TEdit
            Left = 91
            Top = 28
            Width = 89
            Height = 20
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object edtTaxa: TEdit
            Left = 91
            Top = 81
            Width = 89
            Height = 20
            AutoSize = False
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object edtConvenio: TEdit
            Left = 293
            Top = 81
            Width = 89
            Height = 20
            AutoSize = False
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 932
    ExplicitWidth = 932
    inherited btnSair: TSpeedButton
      Left = 864
      ExplicitLeft = 864
    end
  end
  inherited srcEntidade: TDataSource
    Left = 120
    Top = 294
  end
  object DataGeneratorAdapter1: TDataGeneratorAdapter
    FieldDefs = <
      item
        Name = 'Descricao'
        ReadOnly = False
      end
      item
        Name = 'ValorSaldo'
        FieldType = ftCurrency
        ReadOnly = False
      end
      item
        Name = 'Status'
        ReadOnly = False
      end
      item
        Name = 'Agencia'
        ReadOnly = False
      end
      item
        Name = 'Conta'
        ReadOnly = False
      end
      item
        Name = 'Digito'
        ReadOnly = False
      end
      item
        Name = 'Cendente'
        ReadOnly = False
      end
      item
        Name = 'NossoNumero'
        ReadOnly = False
      end
      item
        Name = 'Carteira'
        ReadOnly = False
      end
      item
        Name = 'CodigoBanco'
        ReadOnly = False
      end
      item
        Name = 'Taxa'
        FieldType = ftCurrency
        ReadOnly = False
      end
      item
        Name = 'Convenio'
        ReadOnly = False
      end>
    Active = True
    AutoPost = False
    Options = [loptAllowInsert, loptAllowDelete, loptAllowModify]
    Left = 677
    Top = 82
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
  end
end
