inherited FormPedidoDetalhes: TFormPedidoDetalhes
  Caption = 'Pedido'
  ClientHeight = 538
  ClientWidth = 888
  ExplicitWidth = 904
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 888
    Height = 489
    ExplicitWidth = 888
    ExplicitHeight = 489
    object Label1: TLabel
      Left = 7
      Top = 11
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
    object lbData: TLabel
      Left = 67
      Top = 12
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
    object lbCodigoFornecedor: TLabel
      Left = 175
      Top = 12
      Width = 64
      Height = 13
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbCodigoFormaPagamento: TLabel
      Left = 471
      Top = 12
      Width = 68
      Height = 13
      Caption = 'Forma Pgto.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbTipoFrete: TLabel
      Left = 580
      Top = 12
      Width = 74
      Height = 13
      Caption = 'Tipo de Frete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDataEmissao: TLabel
      Left = 669
      Top = 12
      Width = 46
      Height = 13
      Caption = 'Emissao'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbValorDesconto: TLabel
      Left = 7
      Top = 52
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
    object lbValorFrete: TLabel
      Left = 89
      Top = 53
      Width = 30
      Height = 13
      Caption = 'Frete'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 775
      Top = 12
      Width = 49
      Height = 13
      Caption = 'Previs'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 175
      Top = 53
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
    object Label4: TLabel
      Left = 323
      Top = 53
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
    object edtCodigo: TEdit
      Left = 7
      Top = 27
      Width = 52
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object dateData: TDateTimePicker
      Left = 67
      Top = 27
      Width = 102
      Height = 22
      Cursor = crIBeam
      Date = 41733.672745023150000000
      Time = 41733.672745023150000000
      TabOrder = 1
    end
    object cboCodigoFornecedor: TDBLookupComboBox
      Left = 175
      Top = 27
      Width = 290
      Height = 21
      KeyField = 'Codigo'
      ListField = 'Nome'
      ListSource = srcfornecedores
      TabOrder = 2
    end
    object cboCodigoFormaPagamento: TComboBox
      Left = 471
      Top = 27
      Width = 100
      Height = 21
      TabOrder = 3
    end
    object cboTipoFrete: TComboBox
      Left = 580
      Top = 27
      Width = 75
      Height = 21
      TabOrder = 4
      Items.Strings = (
        'CIF'
        'FOP')
    end
    object dateDataEmissao: TDateTimePicker
      Left = 669
      Top = 26
      Width = 94
      Height = 22
      Cursor = crIBeam
      Date = 41733.672745138890000000
      Time = 41733.672745138890000000
      TabOrder = 5
    end
    object edtValorDesconto: TEdit
      Left = 7
      Top = 68
      Width = 69
      Height = 21
      NumbersOnly = True
      TabOrder = 7
    end
    object edtValorFrete: TEdit
      Left = 89
      Top = 68
      Width = 67
      Height = 21
      NumbersOnly = True
      TabOrder = 8
    end
    object gpbItens: TGroupBox
      Left = 8
      Top = 101
      Width = 874
      Height = 70
      Caption = 'Item'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      object Label6: TLabel
        Left = 463
        Top = 19
        Width = 20
        Height = 13
        Caption = 'Qtd'
      end
      object Label10: TLabel
        Left = 59
        Top = 20
        Width = 38
        Height = 13
        Caption = 'Codigo'
      end
      object Label11: TLabel
        Left = 104
        Top = 20
        Width = 45
        Height = 13
        Caption = 'Produto'
      end
      object Label12: TLabel
        Left = 654
        Top = 18
        Width = 29
        Height = 13
        Caption = 'Valor'
      end
      object Label9: TLabel
        Left = 11
        Top = 20
        Width = 28
        Height = 13
        Caption = 'Item'
      end
      object Label5: TLabel
        Left = 540
        Top = 19
        Width = 28
        Height = 13
        Caption = 'Unid.'
      end
      object Label7: TLabel
        Left = 602
        Top = 19
        Width = 28
        Height = 13
        Caption = 'Coef.'
      end
      object BitBtn1: TSpeedButton
        Left = 727
        Top = 36
        Width = 71
        Height = 25
        Caption = '&Adicionar'
        OnClick = BitBtn1Click
      end
      object CornerButton1: TSpeedButton
        Left = 801
        Top = 36
        Width = 68
        Height = 25
        Caption = '&Remover'
        OnClick = CornerButton1Click
      end
      object edtCodigoItem: TEdit
        Left = 56
        Top = 38
        Width = 41
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 1
        OnChange = edtCodigoItemChange
      end
      object edtQuantidade: TEdit
        Left = 463
        Top = 38
        Width = 68
        Height = 21
        TabOrder = 3
      end
      object edtValor: TEdit
        Left = 654
        Top = 38
        Width = 68
        Height = 21
        Cursor = crIBeam
        TabOrder = 6
      end
      object edtOrdem: TEdit
        Left = 8
        Top = 38
        Width = 41
        Height = 21
        TabStop = False
        ReadOnly = True
        TabOrder = 0
      end
      object cboProduto: TDBLookupComboBox
        Left = 104
        Top = 38
        Width = 353
        Height = 21
        DropDownRows = 15
        DropDownWidth = 500
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListSource = srcProdutos
        TabOrder = 2
        OnCloseUp = cboProdutoCloseUp
      end
      object cboUnidadeMedida: TComboBox
        Left = 540
        Top = 38
        Width = 51
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edtFator: TEdit
        Left = 602
        Top = 38
        Width = 41
        Height = 21
        TabOrder = 5
      end
    end
    object grdItens: TDBGrid
      Left = 7
      Top = 101
      Width = 874
      Height = 356
      DataSource = srcItens
      TabOrder = 11
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Width = 534
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Width = 88
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Desconto'
          Title.Caption = '%'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Visible = False
        end>
    end
    object dateDataPrevisao: TDateTimePicker
      Left = 775
      Top = 26
      Width = 94
      Height = 22
      Cursor = crIBeam
      Date = 41733.672745138890000000
      Time = 41733.672745138890000000
      TabOrder = 6
    end
    object cboSituacao: TComboBox
      Left = 175
      Top = 68
      Width = 133
      Height = 21
      TabOrder = 9
      Items.Strings = (
        'Pendente'
        'Andamento'
        'Conclu'#237'do'
        'Cancelado')
    end
    object cboFuncionario: TComboBox
      Left = 323
      Top = 68
      Width = 252
      Height = 21
      TabOrder = 10
    end
  end
  inherited Panel2: TPanel
    Width = 888
    ExplicitWidth = 888
    inherited btnInserir: TSpeedButton
      Top = 2
      ExplicitTop = 2
    end
    inherited btnCancelar: TSpeedButton
      Top = 2
      ExplicitTop = 2
    end
    inherited btnExcluir: TSpeedButton
      Top = 2
      ExplicitTop = 2
    end
    inherited btnConfirmar: TSpeedButton
      Top = 2
      ExplicitTop = 2
    end
    inherited btnSair: TSpeedButton
      Left = 818
      Top = 2
      Anchors = [akTop, akRight]
      ExplicitLeft = 818
      ExplicitTop = 2
    end
    object CornerButton2: TSpeedButton
      Left = 580
      Top = 2
      Width = 83
      Height = 43
      Caption = 'Pesquisa'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = CornerButton2Click
    end
  end
  object srcItens: TDataSource
    AutoEdit = False
    Left = 496
    Top = 366
  end
  object srcProdutos: TDataSource
    AutoEdit = False
    Left = 664
    Top = 366
  end
  object srcfornecedores: TDataSource
    AutoEdit = False
    Left = 576
    Top = 366
  end
end
