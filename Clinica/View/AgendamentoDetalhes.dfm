inherited FormAgendamentoDetalhes: TFormAgendamentoDetalhes
  Caption = 'Agendamento'
  ClientHeight = 567
  ClientWidth = 1016
  Position = poScreenCenter
  Visible = False
  ExplicitWidth = 1032
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1016
    Height = 505
    ExplicitWidth = 1016
    ExplicitHeight = 505
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 1014
      Height = 31
      Align = alTop
      TabOrder = 0
      DesignSize = (
        1014
        31)
      object lbData: TLabel
        Left = 606
        Top = 5
        Width = 261
        Height = 19
        Anchors = [akTop, akRight]
        Caption = 'Ter'#231'a-feira, 4 de mar'#231'o de 2014'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 614
      end
      object lbPsicologo: TLabel
        Left = 3
        Top = 10
        Width = 72
        Height = 13
        Caption = 'Respons'#225'vel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object chkMes: TCheckBox
        Left = 910
        Top = 6
        Width = 120
        Height = 19
        Anchors = [akTop, akRight]
        Caption = 'Todos do m'#234's'
        TabOrder = 0
        OnClick = chkMesClick
      end
      object cboEspecialista: TComboBox
        Left = 89
        Top = 5
        Width = 130
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownCount = 20
        TabOrder = 1
        OnChange = cboEspecialistaChange
      end
    end
    object pnlAgenda: TPanel
      Left = 1
      Top = 32
      Width = 1014
      Height = 241
      Align = alTop
      TabOrder = 1
      DesignSize = (
        1014
        241)
      object Label3: TLabel
        Left = 3
        Top = 122
        Width = 64
        Height = 13
        Caption = 'Executante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 3
        Top = 150
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
        Left = 3
        Top = 96
        Width = 20
        Height = 13
        Caption = 'CID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbNomePaciente: TLabel
        Left = 3
        Top = 11
        Width = 49
        Height = 13
        Caption = 'Paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCodigoTipoAgendamento: TLabel
        Left = 3
        Top = 68
        Width = 79
        Height = 13
        Caption = 'Procedimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCodigoConvenio: TLabel
        Left = 3
        Top = 40
        Width = 52
        Height = 13
        Caption = 'Conv'#234'nio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 224
        Top = 34
        Width = 24
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton2Click
        ExplicitLeft = 419
      end
      object SpeedButton3: TSpeedButton
        Left = 224
        Top = 62
        Width = 24
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton3Click
        ExplicitLeft = 419
      end
      object SpeedButton1: TSpeedButton
        Left = 224
        Top = 6
        Width = 24
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton1Click
        ExplicitLeft = 419
      end
      object SpeedButton4: TSpeedButton
        Left = 224
        Top = 90
        Width = 24
        Height = 22
        Anchors = [akTop, akRight]
        Caption = '...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = SpeedButton4Click
        ExplicitLeft = 419
      end
      object Label1: TLabel
        Left = 3
        Top = 176
        Width = 68
        Height = 13
        Caption = 'Autoriza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dateData: TMonthCalendar
        Left = 455
        Top = 3
        Width = 250
        Height = 186
        Align = alCustom
        Anchors = [akRight]
        Date = 41722.862156655090000000
        DoubleBuffered = False
        MaxSelectRange = 30
        ParentDoubleBuffered = False
        ShowTodayCircle = False
        TabOrder = 0
        OnClick = dateDataChange
        OnDblClick = dateDataDblClick
        OnGetMonthBoldInfo = dateDataGetMonthBoldInfo
      end
      object rdgHora: TRadioGroup
        Left = 254
        Top = 3
        Width = 195
        Height = 186
        Align = alCustom
        Anchors = [akTop, akRight]
        Caption = 'Horarios'
        Color = clBtnFace
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '08:00'
          '08:30'
          '09:00'
          '09:30'
          '10:00'
          '10:30'
          '11:00'
          '11:30'
          '12:00'
          '12:30'
          '13:00'
          '13:30'
          '14:00'
          '14:30'
          '15:00'
          '15:30'
          '16:00'
          '16:30'
          '17:00'
          '17:30'
          '18:00')
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object cboEncaminhado: TComboBox
        Left = 88
        Top = 117
        Width = 130
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownCount = 20
        TabOrder = 2
        OnChange = cboEspecialistaChange
      end
      object cboSituacao: TComboBox
        Left = 88
        Top = 144
        Width = 131
        Height = 21
        TabOrder = 3
        Items.Strings = (
          'Agendado'
          'Andamento'
          'Conclu'#237'do'
          'Cancelado'
          'A Faturar'
          'Faturado'
          'Pago')
      end
      object cboTabelaCID: TComboBox
        Left = 88
        Top = 90
        Width = 130
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 4
      end
      object cboCodigoTipoAgendamento: TComboBox
        Left = 88
        Top = 61
        Width = 130
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
      end
      object cboCodigoConvenio: TComboBox
        Left = 88
        Top = 33
        Width = 130
        Height = 21
        Style = csDropDownList
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 6
        OnChange = cboCodigoConvenioChange
      end
      object GroupBox1: TGroupBox
        Left = 720
        Top = 1
        Width = 286
        Height = 188
        Anchors = [akTop, akRight]
        Caption = 'Sess'#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        DesignSize = (
          286
          188)
        object DBGrid1: TDBGrid
          Left = 9
          Top = 17
          Width = 268
          Height = 159
          Anchors = [akTop, akRight]
          DataSource = srcSessoes
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = PopupMenu1
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Hora'
              Width = 43
              Visible = True
            end>
        end
      end
      object cboPaciente: TComboBox
        Left = 89
        Top = 6
        Width = 129
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownCount = 16
        TabOrder = 8
      end
      object edtAutorizacao: TEdit
        Left = 88
        Top = 170
        Width = 130
        Height = 21
        TabOrder = 9
      end
    end
    object StringGrid1: TDBGrid
      Left = 1
      Top = 273
      Width = 1014
      Height = 231
      Align = alClient
      DataSource = srcEntidade
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = StringGrid1CellClick
      OnDblClick = StringGrid1DblClick
      OnTitleClick = StringGrid1TitleClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Data'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Hora'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Paciente'
          Width = 327
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoConvenio'
          Title.Caption = 'Conv'#234'nio'
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DescricaoTipoAgendamento'
          Title.Caption = 'Procedimento'
          Width = 217
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TabelaCID'
          Title.Caption = 'CID'
          Width = 209
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QuantidadeSessoes'
          Title.Caption = 'Sessoes'
          Width = 49
          Visible = True
        end>
    end
  end
  inherited Panel2: TPanel
    Width = 1016
    ExplicitWidth = 1016
    DesignSize = (
      1016
      49)
    inherited btnExcluir: TSpeedButton
      Left = 304
      ExplicitLeft = 304
    end
    inherited btnConfirmar: TSpeedButton
      Left = 400
      Visible = True
      ExplicitLeft = 400
    end
    inherited btnSair: TSpeedButton
      Left = 944
      Anchors = [akTop, akRight]
      ExplicitLeft = 944
    end
    object CornerButton1: TButton
      Left = 512
      Top = 2
      Width = 80
      Height = 42
      Caption = 'Duplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = CornerButton1Click
    end
    object Button1: TButton
      Left = 687
      Top = 2
      Width = 80
      Height = 42
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 599
      Top = 2
      Width = 80
      Height = 42
      Caption = 'Lote'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object StatusBar1: TStatusBar [2]
    Left = 0
    Top = 554
    Width = 1016
    Height = 13
    Panels = <>
  end
  inherited srcEntidade: TDataSource
    Left = 456
    Top = 406
  end
  object srcSessoes: TDataSource
    Left = 376
    Top = 408
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 568
    Top = 280
    object ClientDataSet1tste: TStringField
      FieldName = 'tste'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 688
    Top = 304
    object Remover1: TMenuItem
      Caption = 'Remover'
      OnClick = Remover1Click
    end
  end
end
