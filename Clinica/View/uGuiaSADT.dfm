object FormSADT: TFormSADT
  Left = 0
  Top = 0
  Caption = 'FormSADT'
  ClientHeight = 598
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 945
    Height = 557
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      DesignSize = (
        937
        529)
      object Label42: TLabel
        Left = 328
        Top = 0
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
      object Label43: TLabel
        Left = 649
        Top = 0
        Width = 41
        Height = 13
        Caption = 'N'#186' Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbCount: TLabel
        Left = 856
        Top = 16
        Width = 10
        Height = 19
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 4
        Top = 1
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
      object DBGrid1: TDBGrid
        Left = 4
        Top = 45
        Width = 926
        Height = 469
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'RegistroANS'
            Width = 133
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NumeroLote'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numeroGuiaPrestador'
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataAutorizacao'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'senha'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataValidadeSenha'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numeroCarteira'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'atendimentoRN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeBeneficiario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoPrestadorNaOperadora'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeContratado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeProfissional'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conselhoProfissional'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numeroConselhoProfissional'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CBOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'caraterAtendimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipoAtendimento '
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'indicacaoAcidente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataExecucao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoTabela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoProcedimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricaoProcedimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidadeExecutada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'viaAcesso '
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tecnicaUtilizada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'reducaoAcrescimo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorUnitario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorTotal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grauPart'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'codigoPrestadorNaOperadora2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeProf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conselho'
            Visible = True
          end>
      end
      object DateTimePicker1: TDateTimePicker
        Left = 76
        Top = 16
        Width = 105
        Height = 21
        Date = 43289.886472164350000000
        Time = 43289.886472164350000000
        TabOrder = 1
      end
      object DateTimePicker2: TDateTimePicker
        Left = 200
        Top = 16
        Width = 113
        Height = 21
        Date = 43289.886472164350000000
        Time = 43289.886472164350000000
        TabOrder = 2
      end
      object Button1: TButton
        Left = 767
        Top = 14
        Width = 75
        Height = 25
        Caption = 'Pesquisada'
        TabOrder = 3
        OnClick = Button1Click
      end
      object edtNomeExecutante: TEdit
        Left = 328
        Top = 16
        Width = 313
        Height = 21
        TabOrder = 4
      end
      object edtLote: TEdit
        Left = 647
        Top = 16
        Width = 114
        Height = 21
        TabOrder = 5
      end
      object cboUFPesquisa: TComboBox
        Left = 4
        Top = 16
        Width = 66
        Height = 21
        ItemIndex = 10
        TabOrder = 6
        Text = '24-RN'
        Items.Strings = (
          '11-RO'
          '12-AC'
          '13-AM'
          '14-RR'
          '15-PA'
          '16-AP'
          '17-TO'
          '21-MA'
          '22-PI'
          '23-CE'
          '24-RN'
          '25-PB'
          '26-PE'
          '27-AL'
          '28-SE'
          '29-BA'
          '31-MG'
          '32-ES'
          '33-RJ'
          '35-SP'
          '41-PR'
          '42-SC'
          '43-RS'
          '50-MS'
          '51-MT'
          '52-GO'
          '53-DF'
          '98-EX')
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 937
        Height = 529
        Align = alClient
        TabOrder = 0
        object Label10: TLabel
          Left = 621
          Top = 4
          Width = 73
          Height = 23
          Caption = 'N'#186' Lote'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object GroupBox1: TGroupBox
          Left = 14
          Top = 33
          Width = 289
          Height = 73
          Caption = 'Cabecalho da Guia'
          TabOrder = 0
          object Label1: TLabel
            Left = 16
            Top = 24
            Width = 73
            Height = 13
            Caption = 'Registro ANS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 149
            Top = 24
            Width = 131
            Height = 13
            Caption = 'Numero Guia Prestador'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit1: TDBEdit
            Left = 16
            Top = 40
            Width = 121
            Height = 21
            DataField = 'RegistroANS'
            DataSource = DataSource1
            TabOrder = 0
          end
          object Edit2: TDBEdit
            Left = 149
            Top = 40
            Width = 121
            Height = 21
            DataField = 'numeroGuiaPrestador'
            DataSource = DataSource1
            TabOrder = 1
          end
        end
        object GroupBox2: TGroupBox
          Left = 309
          Top = 33
          Width = 612
          Height = 73
          Caption = 'Dados Autorizacao'
          TabOrder = 1
          object Label3: TLabel
            Left = 16
            Top = 24
            Width = 98
            Height = 13
            Caption = 'Data Autorizacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label4: TLabel
            Left = 168
            Top = 24
            Width = 35
            Height = 13
            Caption = 'Senha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 367
            Top = 24
            Width = 116
            Height = 13
            Caption = 'Data Validade Senha'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit3: TDBEdit
            Left = 16
            Top = 40
            Width = 121
            Height = 21
            DataField = 'dataAutorizacao'
            DataSource = DataSource1
            TabOrder = 0
          end
          object Edit4: TDBEdit
            Left = 168
            Top = 40
            Width = 177
            Height = 21
            DataField = 'senha'
            DataSource = DataSource1
            TabOrder = 1
          end
          object Edit5: TDBEdit
            Left = 367
            Top = 40
            Width = 121
            Height = 21
            DataField = 'dataValidadeSenha'
            DataSource = DataSource1
            TabOrder = 2
          end
        end
        object GroupBox3: TGroupBox
          Left = 14
          Top = 112
          Width = 647
          Height = 61
          Caption = 'Dados do Beneficiario'
          TabOrder = 2
          object Label6: TLabel
            Left = 19
            Top = 13
            Width = 93
            Height = 13
            Caption = 'Numero Carteira'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 517
            Top = 16
            Width = 92
            Height = 13
            Caption = 'Atendimento RN'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 160
            Top = 14
            Width = 101
            Height = 13
            Caption = 'Nome Beneficiario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtNumerocarteira: TDBEdit
            Left = 16
            Top = 32
            Width = 121
            Height = 21
            DataField = 'numeroCarteira'
            DataSource = DataSource1
            TabOrder = 0
            OnExit = edtNumerocarteiraExit
          end
          object Edit7: TDBEdit
            Left = 513
            Top = 32
            Width = 121
            Height = 21
            DataField = 'atendimentoRN'
            DataSource = DataSource1
            TabOrder = 1
          end
          object Edit8: TDBEdit
            Left = 156
            Top = 32
            Width = 347
            Height = 21
            DataField = 'nomeBeneficiario'
            DataSource = DataSource1
            TabOrder = 2
          end
        end
        object GroupBox4: TGroupBox
          Left = 11
          Top = 179
          Width = 910
          Height = 90
          Caption = 'Dados Solicitante'
          TabOrder = 3
          object GroupBox5: TGroupBox
            Left = 11
            Top = 14
            Width = 279
            Height = 68
            Caption = 'Contratado do Solicitante'
            TabOrder = 0
            object Label9: TLabel
              Left = 6
              Top = 17
              Width = 140
              Height = 13
              Caption = 'Cod. Prest. na Operadora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label31: TLabel
              Left = 160
              Top = 18
              Width = 99
              Height = 13
              Caption = 'Nome Contratado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edit9: TDBEdit
              Left = 3
              Top = 36
              Width = 128
              Height = 21
              DataField = 'codigoPrestadorNaOperadora'
              DataSource = DataSource1
              TabOrder = 0
            end
            object Edit31: TDBEdit
              Left = 166
              Top = 37
              Width = 110
              Height = 21
              DataField = 'nomeContratado'
              DataSource = DataSource1
              TabOrder = 1
            end
          end
          object GroupBox6: TGroupBox
            Left = 296
            Top = 15
            Width = 607
            Height = 68
            Caption = 'Profissional Solicitante'
            TabOrder = 1
            object Label11: TLabel
              Left = 13
              Top = 17
              Width = 100
              Height = 13
              Caption = 'Nome Profissional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 212
              Top = 16
              Width = 119
              Height = 13
              Caption = 'Conselho Profissional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 346
              Top = 16
              Width = 135
              Height = 13
              Caption = 'N'#186' Conselho Profissional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 488
              Top = 17
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
            object Label15: TLabel
              Left = 539
              Top = 17
              Width = 29
              Height = 13
              Caption = 'CBOS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Edit11: TDBEdit
              Left = 10
              Top = 33
              Width = 186
              Height = 21
              DataField = 'nomeProfissional'
              DataSource = DataSource1
              TabOrder = 0
            end
            object Edit13: TDBEdit
              Left = 343
              Top = 33
              Width = 138
              Height = 21
              DataField = 'numeroConselhoProfissional'
              DataSource = DataSource1
              TabOrder = 2
            end
            object Edit15: TDBEdit
              Left = 535
              Top = 33
              Width = 63
              Height = 21
              DataField = 'CBOS_SOLICITANTE'
              DataSource = DataSource1
              TabOrder = 4
            end
            object DBComboBox1: TDBComboBox
              Left = 216
              Top = 33
              Width = 117
              Height = 21
              DataField = 'conselhoProfissional'
              DataSource = DataSource1
              Items.Strings = (
                '01- CRAS'
                '02- COREN'
                '03- CRF'
                '04- CRFA'
                '05- REFITO'
                '06- CRM'
                '07- CRN'
                '08- CRO'
                '09- CRP'
                '10- Outros')
              TabOrder = 1
            end
            object DBComboBox8: TDBComboBox
              Left = 487
              Top = 33
              Width = 42
              Height = 21
              DataField = 'UF_SOLICITANTE'
              DataSource = DataSource1
              Items.Strings = (
                '11-RO'
                '12-AC'
                '13-AM'
                '14-RR'
                '15-PA'
                '16-AP'
                '17-TO'
                '21-MA'
                '22-PI'
                '23-CE'
                '24-RN'
                '25-PB'
                '26-PE'
                '27-AL'
                '28-SE'
                '29-BA'
                '31-MG'
                '32-ES'
                '33-RJ'
                '35-SP'
                '41-PR'
                '42-SC'
                '43-RS'
                '50-MS'
                '51-MT'
                '52-GO'
                '53-DF'
                '98-EX')
              TabOrder = 3
            end
          end
        end
        object GroupBox7: TGroupBox
          Left = 14
          Top = 268
          Width = 246
          Height = 61
          Caption = 'Dados da Solicitacao'
          TabOrder = 4
          object Label16: TLabel
            Left = 9
            Top = 16
            Width = 100
            Height = 13
            Caption = 'Carater do Atend.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label40: TLabel
            Left = 121
            Top = 16
            Width = 91
            Height = 13
            Caption = 'Data Solicitacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBEdit2: TDBEdit
            Left = 118
            Top = 32
            Width = 115
            Height = 21
            DataField = 'dataSolicitacao'
            DataSource = DataSource1
            TabOrder = 0
          end
          object DBComboBox2: TDBComboBox
            Left = 11
            Top = 32
            Width = 97
            Height = 21
            DataField = 'caraterAtendimento'
            DataSource = DataSource1
            Items.Strings = (
              '1-Efetiva'
              '2-Urgencia')
            TabOrder = 1
          end
        end
        object GroupBox8: TGroupBox
          Left = 266
          Top = 268
          Width = 386
          Height = 61
          Caption = 'Dados do Executante'
          TabOrder = 5
          object Label17: TLabel
            Left = 8
            Top = 15
            Width = 140
            Height = 13
            Caption = 'Cod. Prest. Na Operadora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label18: TLabel
            Left = 156
            Top = 15
            Width = 99
            Height = 13
            Caption = 'Nome Contratado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label19: TLabel
            Left = 312
            Top = 16
            Width = 27
            Height = 13
            Caption = 'CNES'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit17: TDBEdit
            Left = 6
            Top = 31
            Width = 142
            Height = 21
            DataField = 'codigoPrestadorNaOperadora_EXEC'
            DataSource = DataSource1
            TabOrder = 0
          end
          object Edit18: TDBEdit
            Left = 156
            Top = 30
            Width = 149
            Height = 21
            DataField = 'nomeContratado_EXEC'
            DataSource = DataSource1
            TabOrder = 1
          end
          object Edit19: TDBEdit
            Left = 311
            Top = 31
            Width = 65
            Height = 21
            DataField = 'CNES'
            DataSource = DataSource1
            TabOrder = 2
          end
        end
        object GroupBox9: TGroupBox
          Left = 657
          Top = 268
          Width = 264
          Height = 59
          Caption = 'Dados do Atendimento'
          TabOrder = 6
          object Label20: TLabel
            Left = 4
            Top = 16
            Width = 81
            Height = 13
            Caption = 'Tipo do Atend.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label21: TLabel
            Left = 93
            Top = 15
            Width = 75
            Height = 13
            Caption = 'Ind. Acidente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label41: TLabel
            Left = 175
            Top = 16
            Width = 69
            Height = 13
            Caption = 'Tp. Consulta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object DBComboBox3: TDBComboBox
            Left = 8
            Top = 34
            Width = 79
            Height = 21
            DataField = 'tipoAtendimento'
            DataSource = DataSource1
            Items.Strings = (
              '01 - Remo'#231#227'o'
              '02 - Pequena Cirurgia'
              '03 - Outras Terapias'
              '04 - Consulta'
              '05 - Exame Ambulatorial'
              '06- Atendimento Domiciliar'
              '07- Interna'#231#227'o'
              '08- Quimioterapia'
              '09- Radioterapia'
              '10- Terapia Renal Substitutiva (TRS)'
              '11- Pronto Socorro'
              '13- Pequeno atendimento'
              '14- Sa'#250'de Ocupacional - Admissional'
              '15- Sa'#250'de Ocupacional - Demissional'
              '16- Sa'#250'de Ocupacional - Peri'#243'dico'
              '17- Sa'#250'de Ocupacional - Retorno ao trabalho'
              '18- Sa'#250'de Ocupacional - Mudan'#231'a de fun'#231#227'o')
            TabOrder = 0
          end
          object DBComboBox4: TDBComboBox
            Left = 96
            Top = 34
            Width = 73
            Height = 21
            DataField = 'indicacaoAcidente'
            DataSource = DataSource1
            Items.Strings = (
              '0- Trabalho'
              '1- Tr'#226'nsito'
              '2- Outros Acidentes'
              '9- N'#227'o Acidentes')
            TabOrder = 1
          end
          object DBComboBox5: TDBComboBox
            Left = 175
            Top = 35
            Width = 83
            Height = 21
            DataField = 'tipoConsulta'
            DataSource = DataSource1
            Items.Strings = (
              '1- Primeira Consulta'
              '2- Retorno'
              '3- Pr'#233'-natal'
              '4- Por encaminhamento')
            TabOrder = 2
          end
        end
        object GroupBox10: TGroupBox
          Left = 14
          Top = 335
          Width = 907
          Height = 105
          Caption = 'Procedimentos Executados'
          TabOrder = 7
          object Label22: TLabel
            Left = 9
            Top = 16
            Width = 101
            Height = 13
            Caption = 'Data da execucao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label23: TLabel
            Left = 162
            Top = 16
            Width = 79
            Height = 13
            Caption = 'Codigo Tabela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label24: TLabel
            Left = 305
            Top = 16
            Width = 106
            Height = 13
            Caption = 'Cod. Procedimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label25: TLabel
            Left = 453
            Top = 16
            Width = 154
            Height = 13
            Caption = 'Descricao do Procedimento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label26: TLabel
            Left = 244
            Top = 61
            Width = 92
            Height = 13
            Caption = 'Qtde. Executada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 8
            Top = 59
            Width = 60
            Height = 13
            Caption = 'Via Acesso'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 109
            Top = 59
            Width = 95
            Height = 13
            Caption = 'Tecnica Utilizada'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 445
            Top = 60
            Width = 65
            Height = 13
            Caption = 'Val Unitario'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel
            Left = 533
            Top = 60
            Width = 61
            Height = 13
            Caption = 'Valor Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label32: TLabel
            Left = 350
            Top = 59
            Width = 69
            Height = 13
            Caption = 'Red. Acresc.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit22: TDBEdit
            Left = 7
            Top = 32
            Width = 92
            Height = 21
            DataField = 'dataExecucao'
            DataSource = DataSource1
            TabOrder = 0
          end
          object Edit23: TDBEdit
            Left = 160
            Top = 32
            Width = 70
            Height = 21
            DataField = 'codigoTabela'
            DataSource = DataSource1
            TabOrder = 1
          end
          object Edit24: TDBEdit
            Left = 303
            Top = 32
            Width = 116
            Height = 21
            DataField = 'codigoProcedimento'
            DataSource = DataSource1
            TabOrder = 2
          end
          object Edit25: TDBEdit
            Left = 453
            Top = 33
            Width = 436
            Height = 21
            DataField = 'descricaoProcedimento'
            DataSource = DataSource1
            TabOrder = 3
          end
          object Edit26: TDBEdit
            Left = 244
            Top = 75
            Width = 88
            Height = 21
            DataField = 'quantidadeExecutada'
            DataSource = DataSource1
            TabOrder = 6
          end
          object Edit29: TDBEdit
            Left = 443
            Top = 75
            Width = 55
            Height = 21
            DataField = 'valorUnitario'
            DataSource = DataSource1
            TabOrder = 8
          end
          object Edit30: TDBEdit
            Left = 533
            Top = 75
            Width = 76
            Height = 21
            DataField = 'valorTotal'
            DataSource = DataSource1
            TabOrder = 9
          end
          object Edit32: TDBEdit
            Left = 352
            Top = 75
            Width = 80
            Height = 21
            DataField = 'reducaoAcrescimo'
            DataSource = DataSource1
            TabOrder = 7
          end
          object DBComboBox6: TDBComboBox
            Left = 7
            Top = 74
            Width = 89
            Height = 21
            DataField = 'viaAcesso'
            DataSource = DataSource1
            Items.Strings = (
              '1- Unica'
              '2-Mesma via '
              '3-Diferentes vias')
            TabOrder = 4
          end
          object DBComboBox7: TDBComboBox
            Left = 112
            Top = 74
            Width = 126
            Height = 21
            DataField = 'tecnicaUtilizada'
            DataSource = DataSource1
            Items.Strings = (
              '1-Convencional'
              '2-Videolaparoscopia'
              '3-Rob'#243'tica')
            TabOrder = 5
          end
        end
        object GroupBox11: TGroupBox
          Left = 11
          Top = 446
          Width = 910
          Height = 67
          Caption = 'Equipe SADT'
          TabOrder = 8
          object Label33: TLabel
            Left = 10
            Top = 13
            Width = 100
            Height = 13
            Caption = 'Grau Participacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label34: TLabel
            Left = 137
            Top = 13
            Width = 140
            Height = 13
            Caption = 'Cod. Prest. na Operadora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label35: TLabel
            Left = 632
            Top = 13
            Width = 51
            Height = 13
            Caption = 'Conselho'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label36: TLabel
            Left = 293
            Top = 13
            Width = 117
            Height = 13
            Caption = 'Nome do Profissional'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 794
            Top = 13
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
          object Label38: TLabel
            Left = 689
            Top = 13
            Width = 96
            Height = 13
            Caption = 'N'#186' Conselho Prof.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label39: TLabel
            Left = 837
            Top = 13
            Width = 29
            Height = 13
            Caption = 'CBOS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit33: TDBEdit
            Left = 10
            Top = 31
            Width = 84
            Height = 21
            DataField = 'grauPart'
            DataSource = DataSource1
            TabOrder = 0
          end
          object Edit34: TDBEdit
            Left = 133
            Top = 32
            Width = 144
            Height = 21
            DataField = 'codigoPrestadorNaOperadora_EQUI'
            DataSource = DataSource1
            TabOrder = 1
          end
          object Edit35: TDBEdit
            Left = 628
            Top = 32
            Width = 44
            Height = 21
            DataField = 'conselhoProfissional_EQUI'
            DataSource = DataSource1
            TabOrder = 2
          end
          object Edit36: TDBEdit
            Left = 293
            Top = 32
            Width = 329
            Height = 21
            DataField = 'nomeProfissional_EQUI'
            DataSource = DataSource1
            TabOrder = 3
          end
          object Edit37: TDBEdit
            Left = 793
            Top = 32
            Width = 32
            Height = 21
            DataField = 'UF_EQUI'
            DataSource = DataSource1
            TabOrder = 4
          end
          object Edit38: TDBEdit
            Left = 689
            Top = 32
            Width = 92
            Height = 21
            DataField = 'numeroConselhoProfissional_EQUI'
            DataSource = DataSource1
            TabOrder = 5
          end
          object Edit39: TDBEdit
            Left = 837
            Top = 32
            Width = 64
            Height = 21
            DataField = 'CBOS_EQUI'
            DataSource = DataSource1
            TabOrder = 6
          end
        end
        object BitBtn1: TBitBtn
          Left = 95
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Salvar'
          ModalResult = 1
          TabOrder = 9
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 14
          Top = 2
          Width = 75
          Height = 25
          Caption = 'Duplicar'
          ModalResult = 1
          TabOrder = 10
          OnClick = BitBtn2Click
        end
        object DBEdit1: TDBEdit
          Left = 708
          Top = 7
          Width = 121
          Height = 21
          DataField = 'numeroLote'
          DataSource = DataSource1
          TabOrder = 11
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 945
    Height = 41
    Align = alTop
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 232
      Height = 25
      DataSource = DataSource1
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbCancel]
      TabOrder = 0
    end
    object BitBtn3: TBitBtn
      Left = 420
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Exportar XML'
      ModalResult = 1
      TabOrder = 1
      OnClick = BitBtn3Click
    end
    object Button2: TButton
      Left = 246
      Top = 10
      Width = 81
      Height = 25
      Caption = 'Importar XML'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 333
      Top = 10
      Width = 81
      Height = 25
      Caption = 'Gerar Lote'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsTISS
    Left = 853
    Top = 8
  end
  object cdsTISS: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'codigoPrestadorNaOperadora'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RegistroANS'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'NumeroLote'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'numeroGuiaPrestador'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dataAutorizacao'
        DataType = ftDate
      end
      item
        Name = 'senha'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dataValidadeSenha'
        DataType = ftDate
      end
      item
        Name = 'numeroCarteira'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'atendimentoRN'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'nomeBeneficiario'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'codigoPrestadorNaOperadora_SOLI'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'nomeContratado'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'nomeProfissional'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'conselhoProfissional'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'numeroConselhoProfissional'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UF_SOLICITANTE'
        DataType = ftSmallint
      end
      item
        Name = 'CBOS_SOLICITANTE'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'dataSolicitacao'
        DataType = ftDate
      end
      item
        Name = 'caraterAtendimento'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'codigoPrestadorNaOperadora_EXEC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'nomeContratado_EXEC'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CNES'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'tipoAtendimento'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'indicacaoAcidente'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tipoConsulta'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'dataExecucao'
        DataType = ftDate
      end
      item
        Name = 'codigoTabela'
        DataType = ftInteger
      end
      item
        Name = 'codigoProcedimento'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'descricaoProcedimento'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'quantidadeExecutada'
        DataType = ftInteger
      end
      item
        Name = 'reducaoAcrescimo'
        DataType = ftSingle
      end
      item
        Name = 'valorUnitario'
        DataType = ftSingle
      end
      item
        Name = 'valorTotal'
        DataType = ftSingle
      end
      item
        Name = 'valorProcedimentos'
        DataType = ftSingle
      end
      item
        Name = 'valorTotalGeral'
        DataType = ftSingle
      end
      item
        Name = 'CODIGO'
        DataType = ftInteger
      end
      item
        Name = 'viaAcesso'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'tecnicaUtilizada'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'grauPart'
        DataType = ftSingle
      end
      item
        Name = 'codigoPrestadorNaOperadora_EQUI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'nomeProfissional_EQUI'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'conselhoProfissional_EQUI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'numeroConselhoProfissional_EQUI'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UF_EQUI'
        DataType = ftSmallint
      end
      item
        Name = 'CBOS_EQUI'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    StoreDefs = True
    BeforePost = cdsTISSBeforePost
    OnNewRecord = cdsTISSNewRecord
    Left = 848
    Top = 56
    object cdsTISScodigoPrestadorNaOperadora: TStringField
      FieldName = 'codigoPrestadorNaOperadora'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTISSRegistroANS: TStringField
      FieldName = 'RegistroANS'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object cdsTISSNumeroLote: TStringField
      FieldName = 'NumeroLote'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsTISSnumeroGuiaPrestador: TStringField
      FieldName = 'numeroGuiaPrestador'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTISSdataAutorizacao: TDateField
      FieldName = 'dataAutorizacao'
      ProviderFlags = [pfInUpdate]
      OnChange = cdsTISSdataAutorizacaoChange
    end
    object cdsTISSsenha: TStringField
      FieldName = 'senha'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSdataValidadeSenha: TDateField
      FieldName = 'dataValidadeSenha'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSnumeroCarteira: TStringField
      FieldName = 'numeroCarteira'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTISSatendimentoRN: TStringField
      FieldName = 'atendimentoRN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTISSnomeBeneficiario: TStringField
      FieldName = 'nomeBeneficiario'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsTISScodigoPrestadorNaOperadora_SOLI: TStringField
      FieldName = 'codigoPrestadorNaOperadora_SOLI'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTISSnomeContratado: TStringField
      FieldName = 'nomeContratado'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsTISSnomeProfissional: TStringField
      FieldName = 'nomeProfissional'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsTISSconselhoProfissional: TStringField
      FieldName = 'conselhoProfissional'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSnumeroConselhoProfissional: TStringField
      FieldName = 'numeroConselhoProfissional'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTISSUF_SOLICITANTE: TSmallintField
      FieldName = 'UF_SOLICITANTE'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSCBOS_SOLICITANTE: TStringField
      FieldName = 'CBOS_SOLICITANTE'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTISSdataSolicitacao: TDateField
      FieldName = 'dataSolicitacao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISScaraterAtendimento: TStringField
      FieldName = 'caraterAtendimento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISScodigoPrestadorNaOperadora_EXEC: TStringField
      FieldName = 'codigoPrestadorNaOperadora_EXEC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTISSnomeContratado_EXEC: TStringField
      FieldName = 'nomeContratado_EXEC'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object cdsTISSCNES: TStringField
      FieldName = 'CNES'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object cdsTISStipoAtendimento: TStringField
      FieldName = 'tipoAtendimento'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSindicacaoAcidente: TStringField
      FieldName = 'indicacaoAcidente'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISStipoConsulta: TStringField
      FieldName = 'tipoConsulta'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSdataExecucao: TDateField
      FieldName = 'dataExecucao'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISScodigoTabela: TIntegerField
      FieldName = 'codigoTabela'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISScodigoProcedimento: TStringField
      FieldName = 'codigoProcedimento'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object cdsTISSdescricaoProcedimento: TStringField
      FieldName = 'descricaoProcedimento'
      ProviderFlags = [pfInUpdate]
      Size = 200
    end
    object cdsTISSquantidadeExecutada: TIntegerField
      FieldName = 'quantidadeExecutada'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSreducaoAcrescimo: TSingleField
      FieldName = 'reducaoAcrescimo'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSvalorUnitario: TSingleField
      FieldName = 'valorUnitario'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSvalorTotal: TSingleField
      FieldName = 'valorTotal'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSvalorProcedimentos: TSingleField
      FieldName = 'valorProcedimentos'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSvalorTotalGeral: TSingleField
      FieldName = 'valorTotalGeral'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTISSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsTISSviaAcesso: TStringField
      FieldName = 'viaAcesso'
    end
    object cdsTISStecnicaUtilizada: TStringField
      FieldName = 'tecnicaUtilizada'
    end
    object cdsTISSgrauPart: TSingleField
      FieldName = 'grauPart'
    end
    object cdsTISScodigoPrestadorNaOperadora_EQUI: TStringField
      FieldName = 'codigoPrestadorNaOperadora_EQUI'
    end
    object cdsTISSnomeProfissional_EQUI: TStringField
      FieldName = 'nomeProfissional_EQUI'
      Size = 50
    end
    object cdsTISSconselhoProfissional_EQUI: TStringField
      FieldName = 'conselhoProfissional_EQUI'
    end
    object cdsTISSnumeroConselhoProfissional_EQUI: TStringField
      FieldName = 'numeroConselhoProfissional_EQUI'
    end
    object cdsTISSUF_EQUI: TSmallintField
      FieldName = 'UF_EQUI'
    end
    object cdsTISSCBOS_EQUI: TStringField
      FieldName = 'CBOS_EQUI'
      Size = 10
    end
  end
  object XMLDocument1: TXMLDocument
    Left = 576
    Top = 8
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoAllowMultiSelect]
    Left = 672
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = DSServerModuleBaseDados.SQLGUIATISS
    UpdateMode = upWhereKeyOnly
    OnDataRequest = DataSetProvider1DataRequest
    Left = 768
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 364
    Top = 217
    object GravarLote1: TMenuItem
      Caption = 'Gravar Lote'
    end
  end
end
