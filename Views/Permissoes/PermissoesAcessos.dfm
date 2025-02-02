object FormPermissoes: TFormPermissoes
  Left = 0
  Top = 0
  Caption = 'Acessos'
  ClientHeight = 549
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    1004
    549)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 227
    Height = 549
    Align = alLeft
    DataSource = srcFuncionarios
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 189
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 227
    Top = 0
    Width = 206
    Height = 549
    Align = alLeft
    DataSource = srcModulos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 170
        Visible = True
      end>
  end
  object DBGrid3: TDBGrid
    Left = 433
    Top = 1
    Width = 563
    Height = 241
    Anchors = [akLeft, akTop, akRight]
    DataSource = srcAcessos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid3DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Acesso'
        Width = 648
        Visible = True
      end>
  end
  object DBGrid4: TDBGrid
    Left = 433
    Top = 278
    Width = 563
    Height = 265
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = srcPermissoes
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid4DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Acesso'
        Width = 645
        Visible = True
      end>
  end
  object chkTodos: TCheckBox
    Left = 440
    Top = 248
    Width = 97
    Height = 17
    Caption = 'Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object Button1: TButton
    Left = 916
    Top = 247
    Width = 75
    Height = 25
    Caption = 'Conceder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object srcFuncionarios: TDataSource
    OnDataChange = srcFuncionariosDataChange
    Left = 88
    Top = 200
  end
  object srcModulos: TDataSource
    OnDataChange = srcModulosDataChange
    Left = 312
    Top = 200
  end
  object srcAcessos: TDataSource
    Left = 680
    Top = 104
  end
  object srcPermissoes: TDataSource
    Left = 672
    Top = 384
  end
end
