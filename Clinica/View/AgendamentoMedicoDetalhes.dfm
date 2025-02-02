inherited FormAgendamentoMedicosDetalhes: TFormAgendamentoMedicosDetalhes
  ClientHeight = 516
  ClientWidth = 1023
  ExplicitWidth = 1039
  ExplicitHeight = 554
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1023
    Height = 454
    ExplicitWidth = 1022
    ExplicitHeight = 454
    inherited Panel3: TPanel
      Width = 1021
      ExplicitWidth = 1021
      inherited lbData: TLabel
        Left = 613
        ExplicitLeft = 612
      end
      inherited chkMes: TCheckBox
        Left = 917
        ExplicitLeft = 916
      end
      inherited cboEspecialista: TComboBox
        Width = 137
        ExplicitWidth = 137
      end
    end
    inherited pnlAgenda: TPanel
      Width = 1021
      Height = 220
      ExplicitWidth = 1020
      ExplicitHeight = 220
      inherited Label3: TLabel
        Top = 141
        ExplicitTop = 141
      end
      inherited Label2: TLabel
        Top = 169
        ExplicitTop = 169
      end
      inherited Label4: TLabel
        Top = 116
        ExplicitTop = 116
      end
      inherited lbNomePaciente: TLabel
        Top = 41
        ExplicitTop = 41
      end
      inherited lbCodigoTipoAgendamento: TLabel
        Top = 91
        ExplicitTop = 91
      end
      inherited lbCodigoConvenio: TLabel
        Top = 65
        ExplicitTop = 65
      end
      inherited SpeedButton2: TSpeedButton
        Left = 231
        Top = 58
        ExplicitLeft = 230
        ExplicitTop = 58
      end
      inherited SpeedButton3: TSpeedButton
        Left = 231
        Top = 84
        ExplicitLeft = 230
        ExplicitTop = 84
      end
      inherited SpeedButton1: TSpeedButton
        Left = 231
        Top = 32
        ExplicitLeft = 230
        ExplicitTop = 32
      end
      inherited SpeedButton4: TSpeedButton
        Left = 231
        Top = 110
        ExplicitLeft = 230
        ExplicitTop = 110
      end
      inherited Label1: TLabel
        Top = 196
        ExplicitTop = 196
      end
      object Label5: TLabel [11]
        Left = 3
        Top = 11
        Width = 46
        Height = 13
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton5: TSpeedButton [12]
        Left = 231
        Top = 5
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
        OnClick = SpeedButton5Click
        ExplicitLeft = 224
      end
      inherited dateData: TMonthCalendar
        Left = 467
        Height = 206
        Date = 41722.456796990740000000
        ExplicitLeft = 466
        ExplicitHeight = 206
      end
      inherited rdgHora: TRadioGroup
        Left = 261
        Width = 200
        Height = 206
        ExplicitLeft = 260
        ExplicitWidth = 200
        ExplicitHeight = 206
      end
      inherited cboEncaminhado: TComboBox
        Top = 136
        Width = 137
        ExplicitTop = 136
        ExplicitWidth = 137
      end
      inherited cboSituacao: TComboBox
        Top = 163
        Width = 136
        ExplicitTop = 163
        ExplicitWidth = 136
      end
      inherited cboTabelaCID: TComboBox
        Top = 110
        Width = 137
        ExplicitTop = 110
        ExplicitWidth = 137
      end
      inherited cboCodigoTipoAgendamento: TComboBox
        Top = 84
        Width = 137
        ExplicitTop = 84
        ExplicitWidth = 137
      end
      inherited cboCodigoConvenio: TComboBox
        Top = 58
        Width = 137
        ExplicitTop = 58
        ExplicitWidth = 137
      end
      inherited GroupBox1: TGroupBox
        Left = 727
        Height = 208
        ExplicitLeft = 726
        ExplicitHeight = 208
        inherited DBGrid1: TDBGrid
          Height = 182
          Columns = <
            item
              Expanded = False
              FieldName = 'Data'
              Width = 129
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
      inherited cboPaciente: TComboBox
        Top = 32
        Width = 137
        ExplicitTop = 32
        ExplicitWidth = 137
      end
      inherited edtAutorizacao: TEdit
        Left = 89
        Top = 190
        Width = 135
        ExplicitLeft = 89
        ExplicitTop = 190
        ExplicitWidth = 135
      end
      object cboCodigoHospital: TComboBox
        Left = 89
        Top = 6
        Width = 137
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        DropDownCount = 16
        TabOrder = 10
      end
    end
    inherited StringGrid1: TDBGrid
      Top = 252
      Width = 1021
      Height = 201
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Width = 53
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
        end
        item
          Expanded = False
          FieldName = 'DataPagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Visible = True
        end>
    end
  end
  inherited Panel2: TPanel
    Width = 1023
    ExplicitWidth = 1022
    inherited btnSair: TSpeedButton
      Left = 951
      ExplicitLeft = 950
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 503
    Width = 1023
    ExplicitTop = 503
    ExplicitWidth = 1022
  end
  inherited srcEntidade: TDataSource
    Left = 448
  end
end
