inherited FormPacienteListagem: TFormPacienteListagem
  Caption = 'Pesquisa de peciente'
  Visible = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 97
    ExplicitHeight = 97
    inherited SpeedButton2: TSpeedButton
      Top = 64
      ExplicitTop = 64
    end
    inherited btnSelecionar: TSpeedButton
      Left = 8
      Top = 64
      OnClick = SpeedButton3Click
      ExplicitLeft = 8
      ExplicitTop = 64
    end
    object btnPesquisar: TSpeedButton
      Left = 311
      Top = 24
      Width = 80
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnPesquisarClick
    end
    object SpeedButton1: TSpeedButton
      Left = 94
      Top = 64
      Width = 80
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton3: TSpeedButton
      Left = 180
      Top = 64
      Width = 80
      Height = 22
      Anchors = [akTop, akRight]
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object edtPesquisa: TEdit
      Left = 8
      Top = 24
      Width = 297
      Height = 21
      TabOrder = 0
      OnKeyDown = edtPesquisaKeyDown
      OnKeyPress = edtPesquisaKeyPress
    end
  end
  inherited Grid1: TDBGrid
    Top = 97
    Height = 383
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    OnDblClick = SpeedButton2Click
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 427
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NumeroCarteira'
        Width = 93
        Visible = True
      end>
  end
end
