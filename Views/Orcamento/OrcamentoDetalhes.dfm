inherited FormOrcamentoDetalhes: TFormOrcamentoDetalhes
  Caption = 'Or'#231'amento'
  ClientHeight = 562
  ClientWidth = 873
  DoubleBuffered = True
  OnShow = FormShow
  ExplicitWidth = 889
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 51
    Width = 873
    Height = 511
    Anchors = [akLeft, akRight, akBottom]
    ExplicitTop = 51
    ExplicitWidth = 873
    ExplicitHeight = 511
    object Label8: TLabel
      Left = 338
      Top = 464
      Width = 79
      Height = 33
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TabControl1: TPageControl
      Left = 1
      Top = 1
      Width = 871
      Height = 509
      ActivePage = TabSheet1
      Align = alClient
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados do or'#231'amento'
        DesignSize = (
          863
          481)
        object Label13: TLabel
          Left = 3
          Top = 4
          Width = 38
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 103
          Top = 4
          Width = 27
          Height = 13
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 186
          Top = 4
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
        object Label42: TLabel
          Left = 10
          Top = 181
          Width = 77
          Height = 16
          Caption = 'Observa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label43: TLabel
          Left = 209
          Top = 181
          Width = 34
          Height = 16
          Caption = 'Itens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 344
          Top = 3
          Width = 65
          Height = 13
          Caption = 'Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbdatahorainicio: TLabel
          Left = 418
          Top = 4
          Width = 75
          Height = 13
          Caption = 'lbdatahorainicio'
        end
        object Label5: TLabel
          Left = 536
          Top = 3
          Width = 90
          Height = 13
          Caption = 'Tabela de pre'#231'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTotal: TLabel
          Left = 699
          Top = 166
          Width = 59
          Height = 33
          Alignment = taRightJustify
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object gpbItens: TGroupBox
          Left = 206
          Top = 199
          Width = 645
          Height = 90
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object Label6: TLabel
            Left = 380
            Top = 11
            Width = 20
            Height = 13
            Caption = 'Qtd'
          end
          object Label11: TLabel
            Left = 42
            Top = 12
            Width = 55
            Height = 13
            Caption = 'Descri'#231#227'o'
          end
          object Label12: TLabel
            Left = 420
            Top = 11
            Width = 29
            Height = 13
            Caption = 'Valor'
          end
          object Label9: TLabel
            Left = 8
            Top = 12
            Width = 28
            Height = 13
            Caption = 'Item'
          end
          object Label16: TLabel
            Left = 497
            Top = 11
            Width = 46
            Height = 13
            Caption = 'Desc. %'
          end
          object Label10: TLabel
            Left = 54
            Top = 58
            Width = 28
            Height = 13
            Caption = 'Unid.'
            Visible = False
          end
          object BitBtn1: TSpeedButton
            Left = 463
            Top = 57
            Width = 67
            Height = 25
            Caption = '&Adicionar'
            OnClick = BitBtn1Click
          end
          object CornerButton1: TSpeedButton
            Left = 536
            Top = 57
            Width = 73
            Height = 25
            Caption = '&Remover'
            OnClick = CornerButton1Click
          end
          object SpeedButton3: TSpeedButton
            Left = 348
            Top = 30
            Width = 23
            Height = 21
            Caption = '...'
            OnClick = SpeedButton3Click
          end
          object Label14: TLabel
            Left = 557
            Top = 11
            Width = 48
            Height = 13
            Caption = 'Desc. R$'
          end
          object edtCodigoItem: TEdit
            Left = 8
            Top = 57
            Width = 27
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 6
            Visible = False
            OnChange = edtCodigoItemChange
          end
          object edtQuantidade: TEdit
            Left = 382
            Top = 30
            Width = 30
            Height = 21
            TabOrder = 3
          end
          object edtValor: TEdit
            Left = 418
            Top = 30
            Width = 72
            Height = 21
            Cursor = crIBeam
            TabOrder = 4
          end
          object edtOrdem: TEdit
            Left = 8
            Top = 30
            Width = 28
            Height = 21
            TabStop = False
            ReadOnly = True
            TabOrder = 0
          end
          object edtDescontoItem: TEdit
            Left = 498
            Top = 30
            Width = 47
            Height = 21
            Cursor = crIBeam
            MaxLength = 3
            TabOrder = 5
            OnExit = edtDescontoItemExit
          end
          object cboProduto: TDBLookupComboBox
            Left = 42
            Top = 31
            Width = 305
            Height = 21
            DropDownRows = 15
            DropDownWidth = 400
            KeyField = 'Codigo'
            ListField = 'Descricao'
            ListSource = srcProdutos
            TabOrder = 1
            OnCloseUp = cboProdutoCloseUp
          end
          object cboUnidadeMedida: TComboBox
            Left = 88
            Top = 58
            Width = 43
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
          object edtValorDesconto: TEdit
            Left = 554
            Top = 30
            Width = 57
            Height = 21
            Cursor = crIBeam
            TabOrder = 7
            Text = '0'
            OnExit = edtDescontoItemExit
          end
        end
        object grdItens: TDBGrid
          Left = 206
          Top = 297
          Width = 645
          Height = 181
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clWhite
          DataSource = srcItens
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 7
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = grdItensCellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Ordem'
              Title.Caption = 'Item'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 221
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantidade'
              Title.Caption = 'Quant.'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Desconto'
              Title.Caption = '%'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Funcionario'
              Title.Caption = 'Tecnico'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 119
              Visible = True
            end>
        end
        object memoObservacao: TMemo
          Left = 3
          Top = 204
          Width = 197
          Height = 268
          TabStop = False
          Anchors = [akLeft, akTop, akBottom]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 6
        end
        object edtCodigo: TEdit
          Left = 3
          Top = 19
          Width = 53
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
        object cboSituacao: TComboBox
          Left = 194
          Top = 19
          Width = 135
          Height = 21
          TabOrder = 2
          Items.Strings = (
            'Pendente'
            'Em andamento'
            'Conclu'#237'do'
            'Cancelado'
            'A Faturar'
            'Faturado'
            'Retorno'
            'Faturado e A Faturar')
        end
        object dateData: TDateTimePicker
          Left = 71
          Top = 19
          Width = 97
          Height = 21
          Date = 41722.540775486110000000
          Time = 41722.540775486110000000
          TabOrder = 1
        end
        object GroupBox2: TGroupBox
          Left = 3
          Top = 113
          Width = 849
          Height = 50
          Caption = 'Dados do ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object Label1: TLabel
            Left = 5
            Top = 23
            Width = 30
            Height = 13
            Caption = 'Placa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 264
            Top = 23
            Width = 41
            Height = 13
            Caption = 'Modelo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 161
            Top = 23
            Width = 22
            Height = 13
            Caption = 'Ano'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 461
            Top = 24
            Width = 19
            Height = 13
            Caption = 'Cor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton5: TSpeedButton
            Left = 429
            Top = 19
            Width = 23
            Height = 21
            Caption = '...'
            OnClick = SpeedButton5Click
          end
          object edtAno: TEdit
            Left = 189
            Top = 19
            Width = 70
            Height = 21
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NumbersOnly = True
            ParentFont = False
            TabOrder = 2
          end
          object cboCor: TComboBox
            Left = 490
            Top = 19
            Width = 88
            Height = 21
            CharCase = ecUpperCase
            DropDownCount = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Items.Strings = (
              'NAOINFORMADO'
              'AMARELO'
              'AZUL'
              'BEGE'
              'BRANCO'
              'CINZA'
              'DOURADO'
              'GRENA'
              'LARANJA'
              'MARROM'
              'PRATA'
              'PRETO'
              'ROSA'
              'ROXO'
              'VERDE'
              'VERMELHO')
          end
          object edtPlaca: TEdit
            Left = 52
            Top = 19
            Width = 101
            Height = 21
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnExit = edtPlacaExit
            OnKeyPress = edtPlacaKeyPress
          end
          object cboModelo: TComboBox
            Left = 309
            Top = 19
            Width = 116
            Height = 21
            CharCase = ecUpperCase
            DropDownCount = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object GroupBox3: TGroupBox
          Left = 3
          Top = 46
          Width = 849
          Height = 64
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object lbCNPJ: TLabel
            Left = 7
            Top = 19
            Width = 53
            Height = 13
            Caption = 'CPF/CNPJ'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton2: TSpeedButton
            Left = 563
            Top = 13
            Width = 23
            Height = 21
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object lbrazao: TLabel
            Left = 7
            Top = 41
            Width = 3
            Height = 13
            Caption = '.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbtelefone: TLabel
            Left = 401
            Top = 41
            Width = 3
            Height = 13
            Caption = '.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbContato: TLabel
            Left = 529
            Top = 41
            Width = 3
            Height = 13
            Caption = '.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtCPFCNPJ: TEdit
            Left = 66
            Top = 14
            Width = 142
            Height = 21
            TabOrder = 0
            OnExit = edtCPFCNPJExit
          end
          object cboClientes: TDBLookupComboBox
            Left = 223
            Top = 14
            Width = 334
            Height = 21
            DropDownRows = 20
            TabOrder = 1
            OnExit = cboClientesExit
          end
        end
        object cboFuncionarios: TDBLookupComboBox
          Left = 342
          Top = 19
          Width = 188
          Height = 21
          DropDownRows = 20
          TabOrder = 8
        end
        object cboCodigoTabelaPreco: TDBLookupComboBox
          Left = 536
          Top = 19
          Width = 160
          Height = 21
          DropDownRows = 20
          TabOrder = 9
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Faturamento'
        OnShow = TabSheet2Show
        object Label18: TLabel
          Left = 319
          Top = 215
          Width = 122
          Height = 29
          Caption = 'A receber:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTotalCobrado: TLabel
          Left = 447
          Top = 215
          Width = 53
          Height = 29
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 319
          Top = 250
          Width = 76
          Height = 29
          Caption = 'Resta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbResto: TLabel
          Left = 447
          Top = 251
          Width = 53
          Height = 29
          Caption = '0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Button1: TSpeedButton
          Left = 267
          Top = 73
          Width = 41
          Height = 22
          Caption = '>>'
          OnClick = Button1Click
        end
        object Button2: TSpeedButton
          Left = 267
          Top = 112
          Width = 41
          Height = 22
          Caption = '<<'
          OnClick = Button2Click
        end
        object StringGrid1: TDBGrid
          Left = 317
          Top = 9
          Width = 532
          Height = 200
          DataSource = srcOrcamentoFormaPagamento
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = StringGrid1CellClick
          Columns = <
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Vencimento'
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Width = 83
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Percentualdesconto'
              Title.Caption = '%'
              Width = 31
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Liquido'
              Title.Caption = 'L'#237'quido'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ValorPago'
              Title.Caption = 'Recebido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Troco'
              Width = 37
              Visible = True
            end>
        end
        object BitBtn2: TBitBtn
          Left = 554
          Top = 215
          Width = 73
          Height = 25
          Caption = 'Faturar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn2Click
        end
        object GroupBox1: TGroupBox
          Left = 39
          Top = 3
          Width = 213
          Height = 241
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object Label4: TLabel
            Left = 8
            Top = 16
            Width = 121
            Height = 13
            Caption = 'Forma de pagamento'
          end
          object Label21: TLabel
            Left = 8
            Top = 77
            Width = 67
            Height = 13
            Caption = 'Vencimento'
          end
          object Label17: TLabel
            Left = 8
            Top = 132
            Width = 29
            Height = 13
            Caption = 'Valor'
          end
          object SpeedButton1: TSpeedButton
            Left = 119
            Top = 149
            Width = 34
            Height = 22
            Caption = 'calc'
          end
          object SpeedButton4: TSpeedButton
            Left = 175
            Top = 33
            Width = 23
            Height = 21
            Caption = '...'
            OnClick = SpeedButton4Click
          end
          object Label7: TLabel
            Left = 9
            Top = 180
            Width = 13
            Height = 13
            Caption = '%'
            Visible = False
          end
          object cboFormaPagamento: TComboBox
            Left = 8
            Top = 35
            Width = 161
            Height = 21
            Style = csDropDownList
            DropDownCount = 20
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnSelect = cboFormaPagamentoSelect
          end
          object dateVencimento: TDateTimePicker
            Left = 8
            Top = 96
            Width = 105
            Height = 21
            Date = 41722.540775486110000000
            Time = 41722.540775486110000000
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edtValorFormaPagamento: TEdit
            Left = 8
            Top = 149
            Width = 105
            Height = 21
            Cursor = crIBeam
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = '0'
          end
          object edtdesconto: TEdit
            Left = 9
            Top = 197
            Width = 104
            Height = 21
            Cursor = crIBeam
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Text = '0'
            Visible = False
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Vistoria'
        ImageIndex = 2
        OnShow = TabSheet3Show
        object Label20: TLabel
          Left = 1
          Top = 17
          Width = 40
          Height = 11
          Caption = 'Extintor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 1
          Top = 68
          Width = 72
          Height = 11
          Caption = 'Chave de roda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 1
          Top = 41
          Width = 37
          Height = 11
          Caption = 'Macaco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 1
          Top = 125
          Width = 37
          Height = 11
          Caption = 'Bateria'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 1
          Top = 97
          Width = 48
          Height = 11
          Caption = 'Tri'#226'ngulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 306
          Top = 125
          Width = 50
          Height = 11
          Caption = 'CD Player'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 306
          Top = 95
          Width = 75
          Height = 11
          Caption = 'Rodas liga leve'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 306
          Top = 67
          Width = 35
          Height = 11
          Caption = 'Tapete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label29: TLabel
          Left = 306
          Top = 42
          Width = 56
          Height = 11
          Caption = 'Farol milha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 306
          Top = 15
          Width = 54
          Height = 11
          Caption = 'Acendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 1
          Top = 153
          Width = 37
          Height = 11
          Caption = 'Calotas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label32: TLabel
          Left = 306
          Top = 152
          Width = 68
          Height = 11
          Caption = 'Auto-falantes'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 631
          Top = 15
          Width = 36
          Height = 11
          Caption = 'Manual'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label34: TLabel
          Left = 631
          Top = 41
          Width = 69
          Height = 11
          Caption = 'Chave igni'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 631
          Top = 68
          Width = 79
          Height = 11
          Caption = 'Pneus Dianteiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 631
          Top = 97
          Width = 73
          Height = 11
          Caption = 'Pneus traseiro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 631
          Top = 125
          Width = 33
          Height = 11
          Caption = 'Estepe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 631
          Top = 153
          Width = 42
          Height = 11
          Caption = 'Objetos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Image5: TImage
          Left = 131
          Top = 194
          Width = 271
          Height = 220
          Stretch = True
        end
        object Label38: TLabel
          Left = 424
          Top = 178
          Width = 70
          Height = 13
          Caption = 'Observa'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cboExtintor: TComboBox
          Left = 81
          Top = 10
          Width = 44
          Height = 21
          TabOrder = 0
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboMacaco: TComboBox
          Left = 81
          Top = 39
          Width = 44
          Height = 21
          TabOrder = 2
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboChaveRoda: TComboBox
          Left = 81
          Top = 66
          Width = 44
          Height = 21
          TabOrder = 4
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboBateria: TComboBox
          Left = 81
          Top = 120
          Width = 44
          Height = 21
          TabOrder = 8
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboTriangulo: TComboBox
          Left = 81
          Top = 93
          Width = 44
          Height = 21
          TabOrder = 6
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboCalotas: TComboBox
          Left = 81
          Top = 147
          Width = 44
          Height = 21
          TabOrder = 10
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboAcendendor: TComboBox
          Left = 383
          Top = 8
          Width = 44
          Height = 21
          TabOrder = 12
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cbofarolMilha: TComboBox
          Left = 383
          Top = 37
          Width = 44
          Height = 21
          TabOrder = 14
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboTapete: TComboBox
          Left = 383
          Top = 64
          Width = 44
          Height = 21
          TabOrder = 16
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboRodas: TComboBox
          Left = 383
          Top = 91
          Width = 44
          Height = 21
          TabOrder = 18
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboCdPlayer: TComboBox
          Left = 383
          Top = 118
          Width = 44
          Height = 21
          TabOrder = 20
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboEstepe: TComboBox
          Left = 713
          Top = 118
          Width = 58
          Height = 21
          TabOrder = 32
          Items.Strings = (
            'NOVO'
            'BONS'
            'RUINS')
        end
        object cboPneusTraseiros: TComboBox
          Left = 713
          Top = 91
          Width = 58
          Height = 21
          TabOrder = 30
          Items.Strings = (
            'NOVO'
            'BONS'
            'RUINS')
        end
        object cboPneusDianteiro: TComboBox
          Left = 713
          Top = 64
          Width = 58
          Height = 21
          TabOrder = 28
          Items.Strings = (
            'NOVO'
            'BONS'
            'RUINS')
        end
        object cboChave: TComboBox
          Left = 713
          Top = 37
          Width = 58
          Height = 21
          TabOrder = 26
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboManual: TComboBox
          Left = 713
          Top = 8
          Width = 58
          Height = 21
          TabOrder = 24
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object cboAutoFalantes: TComboBox
          Left = 383
          Top = 146
          Width = 44
          Height = 21
          TabOrder = 22
          Items.Strings = (
            'SIM'
            'N'#195'O')
        end
        object edtExtintor: TEdit
          Left = 131
          Top = 9
          Width = 160
          Height = 21
          TabOrder = 1
        end
        object edtMacaco: TEdit
          Left = 131
          Top = 39
          Width = 160
          Height = 21
          TabOrder = 3
        end
        object edtChaveRoda: TEdit
          Left = 131
          Top = 66
          Width = 160
          Height = 21
          TabOrder = 5
        end
        object edtTriangulo: TEdit
          Left = 131
          Top = 93
          Width = 160
          Height = 21
          TabOrder = 7
        end
        object edtCalotas: TEdit
          Left = 131
          Top = 147
          Width = 160
          Height = 21
          TabOrder = 11
        end
        object edtBateria: TEdit
          Left = 131
          Top = 121
          Width = 160
          Height = 21
          TabOrder = 9
        end
        object edtAutoFalantes: TEdit
          Left = 433
          Top = 146
          Width = 186
          Height = 21
          TabOrder = 23
        end
        object edtCDPlayer: TEdit
          Left = 433
          Top = 118
          Width = 186
          Height = 21
          TabOrder = 21
        end
        object edtRodas: TEdit
          Left = 433
          Top = 91
          Width = 186
          Height = 21
          TabOrder = 19
        end
        object edtTapete: TEdit
          Left = 433
          Top = 64
          Width = 186
          Height = 21
          TabOrder = 17
        end
        object edtFarolMilha: TEdit
          Left = 433
          Top = 37
          Width = 186
          Height = 21
          TabOrder = 15
        end
        object edtAcendedor: TEdit
          Left = 433
          Top = 8
          Width = 186
          Height = 21
          TabOrder = 13
        end
        object edtEstepe: TEdit
          Left = 775
          Top = 118
          Width = 170
          Height = 21
          TabOrder = 33
        end
        object edtPneusTraseiros: TEdit
          Left = 775
          Top = 91
          Width = 170
          Height = 21
          TabOrder = 31
        end
        object edtPneusDianteiro: TEdit
          Left = 775
          Top = 64
          Width = 170
          Height = 21
          TabOrder = 29
        end
        object edtChave: TEdit
          Left = 775
          Top = 37
          Width = 170
          Height = 21
          TabOrder = 27
        end
        object edtManual: TEdit
          Left = 775
          Top = 8
          Width = 170
          Height = 21
          TabOrder = 25
        end
        object edtObjetos: TEdit
          Left = 713
          Top = 145
          Width = 232
          Height = 21
          TabOrder = 34
        end
        object FileListBox1: TFileListBox
          Left = 3
          Top = 194
          Width = 122
          Height = 220
          FileType = [ftArchive, ftNormal]
          Mask = '*.jpg'
          ShowGlyphs = True
          TabOrder = 35
          OnChange = FileListBox1Change
        end
        object memoObservacaoVistoria: TMemo
          Left = 424
          Top = 194
          Width = 521
          Height = 223
          TabOrder = 36
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 873
    Height = 51
    ExplicitWidth = 873
    ExplicitHeight = 51
    inherited btnInserir: TSpeedButton
      Left = 9
      Top = 3
      ExplicitLeft = 9
      ExplicitTop = 3
    end
    inherited btnAlterar: TSpeedButton
      Left = 99
      Top = 3
      ExplicitLeft = 99
      ExplicitTop = 3
    end
    inherited btnCancelar: TSpeedButton
      Left = 212
      Top = 4
      Width = 104
      ExplicitLeft = 212
      ExplicitTop = 4
      ExplicitWidth = 104
    end
    inherited btnExcluir: TSpeedButton
      Left = 322
      Top = 4
      ExplicitLeft = 322
      ExplicitTop = 4
    end
    inherited btnConfirmar: TSpeedButton
      Left = 429
      Top = 3
      Width = 106
      ExplicitLeft = 429
      ExplicitTop = 3
      ExplicitWidth = 106
    end
    inherited btnSair: TSpeedButton
      Left = 758
      Top = 4
      Width = 68
      ExplicitLeft = 758
      ExplicitTop = 4
      ExplicitWidth = 68
    end
    object Button3: TSpeedButton
      Left = 541
      Top = 3
      Width = 91
      Height = 42
      Caption = '&Imprimir'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Button3Click
    end
  end
  inherited srcEntidade: TDataSource
    Left = 216
    Top = 494
  end
  object srcItens: TDataSource
    AutoEdit = False
    Left = 136
    Top = 494
  end
  object srcOrcamentoFormaPagamento: TDataSource
    Left = 336
    Top = 497
  end
  object srcProdutos: TDataSource
    Left = 472
    Top = 497
  end
  object PopupMenu1: TPopupMenu
    Left = 472
    Top = 320
    object VisualizarFatura1: TMenuItem
      Caption = 'Visualizar Fatura'
      OnClick = VisualizarFatura1Click
    end
  end
end
