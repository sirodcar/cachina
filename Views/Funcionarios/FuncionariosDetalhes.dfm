inherited FormFuncionariosDetalhes: TFormFuncionariosDetalhes
  Caption = 'Funcion'#225'rios'
  ClientHeight = 508
  ClientWidth = 709
  ExplicitWidth = 725
  ExplicitHeight = 546
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 709
    Height = 459
    ExplicitWidth = 709
    inherited tabPrincipal: TPageControl
      Width = 707
      Height = 457
      ExplicitWidth = 707
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 699
        ExplicitHeight = 464
        inherited grdEntidade: TDBGrid
          Width = 699
          Height = 342
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Width = 373
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NomeCargo'
              Title.Caption = 'Cargo'
              Width = 140
              Visible = True
            end>
        end
        inherited pnlSuperior: TPanel
          Width = 699
          ExplicitWidth = 699
          inherited grpPesquisa: TGroupBox
            Left = 4
            Top = 2
            ExplicitLeft = 4
            ExplicitTop = 2
          end
        end
        inherited pnlInferior: TPanel
          Top = 407
          Width = 699
          ExplicitTop = 442
          ExplicitWidth = 699
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 699
        ExplicitHeight = 429
        object TabControl1: TPageControl
          Left = 3
          Top = 3
          Width = 686
          Height = 388
          ActivePage = TabSheet3
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = 'Dados iniciais'
            ExplicitWidth = 608
            object Label2: TLabel
              Left = 12
              Top = 23
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
            object Label3: TLabel
              Left = 12
              Top = 64
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
            object Label4: TLabel
              Left = 12
              Top = 104
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
            object Label5: TLabel
              Left = 12
              Top = 143
              Width = 55
              Height = 13
              Caption = 'Admiss'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label9: TLabel
              Left = 12
              Top = 173
              Width = 13
              Height = 13
              Caption = '%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 12
              Top = 211
              Width = 33
              Height = 13
              Caption = 'Cargo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 518
              Top = 207
              Width = 23
              Height = 22
              Caption = '...'
              OnClick = SpeedButton1Click
            end
            object Label14: TLabel
              Left = 316
              Top = 139
              Width = 49
              Height = 13
              Caption = 'Situa'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label16: TLabel
              Left = 140
              Top = 173
              Width = 68
              Height = 13
              Caption = 'Gratifica'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 296
              Top = 171
              Width = 112
              Height = 13
              Caption = 'Tipo de Gratifica'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label18: TLabel
              Left = 12
              Top = 253
              Width = 69
              Height = 13
              Caption = 'Sal'#225'rio Base'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 421
              Top = 23
              Width = 20
              Height = 13
              Caption = 'CPF'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Nome: TEdit
              Tag = 1
              Left = 89
              Top = 16
              Width = 319
              Height = 21
              TabOrder = 0
              OnKeyPress = EditPress
            end
            object Telefone: TEdit
              Left = 89
              Top = 56
              Width = 426
              Height = 21
              TabOrder = 3
            end
            object Email: TEdit
              Left = 89
              Top = 96
              Width = 426
              Height = 21
              TabOrder = 1
            end
            object Comissao: TEdit
              Left = 89
              Top = 168
              Width = 40
              Height = 21
              TabOrder = 2
            end
            object Admissao: TDateTimePicker
              Left = 89
              Top = 134
              Width = 112
              Height = 21
              Date = 41721.582998854170000000
              Time = 41721.582998854170000000
              TabOrder = 4
            end
            object GroupBox1: TGroupBox
              Left = 12
              Top = 275
              Width = 575
              Height = 73
              Caption = 'Banco'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
              object Label10: TLabel
                Left = 238
                Top = 33
                Width = 45
                Height = 13
                Caption = 'Ag'#234'ncia'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label11: TLabel
                Left = 390
                Top = 33
                Width = 34
                Height = 13
                Caption = 'CC/CP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbbanco: TLabel
                Left = 13
                Top = 33
                Width = 34
                Height = 13
                Caption = 'Banco'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Agencia: TEdit
                Left = 298
                Top = 28
                Width = 73
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object Conta: TEdit
                Left = 430
                Top = 28
                Width = 73
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object Banco: TComboBox
                Left = 78
                Top = 28
                Width = 137
                Height = 21
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                Items.Strings = (
                  'Banco do Brasil'
                  'Caixa Economica'
                  'Bradesco'
                  'Itau'
                  'HSBC')
              end
            end
            object CodigoCargo: TComboBox
              Left = 89
              Top = 208
              Width = 426
              Height = 21
              TabOrder = 6
            end
            object Situacao: TComboBox
              Left = 378
              Top = 134
              Width = 137
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
              Items.Strings = (
                'ATIVO'
                'INATIVO')
            end
            object Gratificacao: TEdit
              Left = 217
              Top = 168
              Width = 73
              Height = 21
              TabOrder = 8
            end
            object TipoGratificacao: TComboBox
              Left = 414
              Top = 168
              Width = 101
              Height = 21
              TabOrder = 9
              Items.Strings = (
                'Fixo'
                'Por Servi'#231'o')
            end
            object SalarioBase: TEdit
              Left = 89
              Top = 248
              Width = 112
              Height = 21
              TabOrder = 10
            end
            object CPF: TEdit
              Tag = 1
              Left = 452
              Top = 16
              Width = 135
              Height = 21
              TabOrder = 11
              OnKeyPress = EditPress
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Comissionamento'
            OnShow = TabSheet4Show
            ExplicitWidth = 608
            object Label1: TLabel
              Left = 8
              Top = 16
              Width = 42
              Height = 13
              Caption = 'Servi'#231'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label6: TLabel
              Left = 436
              Top = 16
              Width = 70
              Height = 13
              Caption = 'Comiss'#227'o %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 523
              Top = 16
              Width = 53
              Height = 13
              Caption = 'Produ'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object StringGrid2: TDBGrid
              Left = 5
              Top = 96
              Width = 597
              Height = 258
              DataSource = srcFuncionarioComissao
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnCellClick = StringGrid2CellClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Servico'
                  Width = 438
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PercentualComissao'
                  Title.Caption = '%'
                  Width = 47
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Valor'
                  Width = 71
                  Visible = True
                end>
            end
            object edtComissaoItem: TEdit
              Left = 436
              Top = 32
              Width = 73
              Height = 21
              TabOrder = 1
            end
            object cboServico: TComboBox
              Left = 8
              Top = 32
              Width = 417
              Height = 21
              TabOrder = 2
            end
            object Button1: TButton
              Left = 8
              Top = 63
              Width = 75
              Height = 25
              Caption = 'Confirmar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnClick = Button1Click
            end
            object Button2: TButton
              Left = 89
              Top = 63
              Width = 75
              Height = 25
              Caption = 'Remover'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnClick = Button2Click
            end
            object edtValor: TEdit
              Left = 523
              Top = 32
              Width = 74
              Height = 21
              TabOrder = 5
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Login '
            ExplicitWidth = 608
            object Label7: TLabel
              Left = 12
              Top = 23
              Width = 25
              Height = 13
              Caption = 'Login'
            end
            object Label8: TLabel
              Left = 12
              Top = 56
              Width = 30
              Height = 13
              Caption = 'Senha'
            end
            object Login: TEdit
              Left = 89
              Top = 16
              Width = 98
              Height = 21
              TabOrder = 1
            end
            object Senha: TEdit
              Left = 89
              Top = 48
              Width = 98
              Height = 21
              PasswordChar = '*'
              TabOrder = 0
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Faltas'
            ImageIndex = 3
            OnShow = TabSheet6Show
            ExplicitWidth = 608
            object Label19: TLabel
              Left = 17
              Top = 15
              Width = 23
              Height = 13
              Caption = 'Data'
            end
            object Label20: TLabel
              Left = 127
              Top = 15
              Width = 58
              Height = 13
              Caption = 'Observa'#231#227'o'
            end
            object Label12: TLabel
              Left = 519
              Top = 17
              Width = 80
              Height = 13
              Caption = 'Dias trabalhados'
            end
            object Label22: TLabel
              Left = 448
              Top = 72
              Width = 79
              Height = 13
              Caption = 'Dias trabalhado:'
            end
            object lbDias: TLabel
              Left = 536
              Top = 72
              Width = 28
              Height = 13
              Caption = 'lbDias'
            end
            object DBGrid1: TDBGrid
              Left = 16
              Top = 90
              Width = 577
              Height = 247
              DataSource = srcFuncionarioFaltas
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnCellClick = DBGrid1CellClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Data'
                  Width = 112
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Observacao'
                  Title.Caption = 'Observa'#231#227'o'
                  Width = 425
                  Visible = True
                end>
            end
            object dateDataFalta: TDateTimePicker
              Left = 16
              Top = 32
              Width = 105
              Height = 21
              Date = 41897.419544930560000000
              Time = 41897.419544930560000000
              TabOrder = 1
            end
            object Button3: TButton
              Left = 16
              Top = 59
              Width = 75
              Height = 25
              Caption = 'Confirmar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = Button3Click
            end
            object Button4: TButton
              Left = 97
              Top = 59
              Width = 75
              Height = 25
              Caption = 'Remover'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
              OnClick = Button4Click
            end
            object edtObservacaoFalta: TEdit
              Left = 127
              Top = 32
              Width = 386
              Height = 21
              TabOrder = 4
            end
            object edtDias: TEdit
              Left = 519
              Top = 32
              Width = 74
              Height = 21
              TabOrder = 5
            end
          end
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 709
    ExplicitWidth = 709
    inherited btnAlterar: TSpeedButton
      Left = 104
      Top = 1
      ExplicitLeft = 104
      ExplicitTop = 1
    end
    inherited btnSair: TSpeedButton
      Left = 641
      ExplicitLeft = 641
    end
    inherited btnRelatorio: TSpeedButton
      Left = 564
      Width = 71
      ExplicitLeft = 564
      ExplicitWidth = 71
    end
  end
  inherited srcEntidade: TDataSource
    Left = 280
    Top = 430
  end
  inherited srcPesquisa: TDataSource
    Left = 200
    Top = 430
  end
  object srcFuncionarioComissao: TDataSource
    AutoEdit = False
    Left = 376
    Top = 430
  end
  object srcFuncionarioFaltas: TDataSource
    AutoEdit = False
    Left = 512
    Top = 430
  end
end
