inherited FormLogListagem: TFormLogListagem
  Caption = 'Log'
  ClientHeight = 546
  ClientWidth = 1015
  OnCreate = FormCreate
  ExplicitWidth = 1031
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1015
    Height = 113
    ExplicitWidth = 1015
    ExplicitHeight = 113
    inherited SpeedButton2: TSpeedButton
      Left = 929
      Top = 8
      ExplicitLeft = 554
      ExplicitTop = 8
    end
    inherited btnSelecionar: TSpeedButton
      Left = 929
      Top = 33
      Visible = False
      ExplicitLeft = 554
      ExplicitTop = 33
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 2
      Width = 756
      Height = 104
      Caption = 'Pesquisa'
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 17
        Width = 43
        Height = 13
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 236
        Top = 16
        Width = 41
        Height = 13
        Caption = 'M'#243'dulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 122
        Top = 57
        Width = 43
        Height = 13
        Caption = 'Usu'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 7
        Top = 57
        Width = 54
        Height = 13
        Caption = 'Opera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 333
        Top = 57
        Width = 57
        Height = 13
        Caption = 'Contendo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 424
        Top = 15
        Width = 38
        Height = 13
        Caption = 'Tabela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dateInicio: TDateTimePicker
        Left = 7
        Top = 31
        Width = 107
        Height = 21
        Date = 41768.377455983800000000
        Time = 41768.377455983800000000
        TabOrder = 0
      end
      object dateFim: TDateTimePicker
        Left = 121
        Top = 31
        Width = 105
        Height = 21
        Date = 41768.377455983800000000
        Time = 41768.377455983800000000
        TabOrder = 1
      end
      object cboModulo: TDBLookupComboBox
        Left = 236
        Top = 31
        Width = 178
        Height = 21
        DropDownRows = 10
        TabOrder = 2
      end
      object cboUsuario: TDBLookupComboBox
        Left = 121
        Top = 75
        Width = 200
        Height = 21
        DropDownRows = 10
        TabOrder = 3
      end
      object BitBtn1: TBitBtn
        Left = 570
        Top = 72
        Width = 115
        Height = 25
        Caption = 'Consultar'
        Default = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
        TabOrder = 4
        OnClick = BitBtn1Click
      end
      object cboOperacao: TComboBox
        Left = 7
        Top = 75
        Width = 104
        Height = 21
        TabOrder = 5
        Items.Strings = (
          ''
          'Cadastro'
          'Altera'#231#227'o'
          'Exclus'#227'o'
          'Aviso')
      end
      object edtDescricao: TEdit
        Left = 333
        Top = 75
        Width = 227
        Height = 21
        TabOrder = 6
      end
      object edtTabela: TEdit
        Left = 425
        Top = 31
        Width = 227
        Height = 21
        TabOrder = 7
      end
    end
  end
  inherited Grid1: TDBGrid
    Top = 113
    Width = 761
    Height = 433
    Columns = <
      item
        Expanded = False
        FieldName = 'Data'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Modulo'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tabela'
        Width = 169
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Caption = 'Usu'#225'rio'
        Width = 190
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Operacao'
        Width = 95
        Visible = True
      end>
  end
  object DBMemo1: TDBMemo [2]
    Left = 761
    Top = 113
    Width = 254
    Height = 433
    Align = alRight
    DataField = 'Descricao'
    DataSource = srcEntidade
    TabOrder = 2
  end
end
