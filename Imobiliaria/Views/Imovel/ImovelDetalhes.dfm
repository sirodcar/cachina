inherited FormImoveisDetalhes: TFormImoveisDetalhes
  Caption = 'Obra'
  ClientHeight = 539
  ClientWidth = 880
  ExplicitWidth = 896
  ExplicitHeight = 577
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 880
    Height = 490
    ExplicitWidth = 880
    ExplicitHeight = 490
    inherited tabPrincipal: TPageControl
      Width = 878
      Height = 488
      ExplicitWidth = 878
      ExplicitHeight = 488
      inherited TabSheet1: TTabSheet
        ExplicitWidth = 870
        ExplicitHeight = 460
        inherited grdEntidade: TDBGrid
          Width = 870
          Height = 389
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Titulo'
              Width = 759
              Visible = True
            end>
        end
        inherited pnlSuperior: TPanel
          Width = 870
          ExplicitWidth = 870
          object Label8: TLabel [0]
            Left = 3
            Top = 6
            Width = 32
            Height = 13
            Caption = 'T'#237'tulo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label30: TLabel [1]
            Left = 176
            Top = 49
            Width = 57
            Height = 13
            Caption = 'Finalidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label31: TLabel [2]
            Left = 402
            Top = 46
            Width = 24
            Height = 13
            Caption = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label32: TLabel [3]
            Left = 542
            Top = 46
            Width = 49
            Height = 13
            Caption = 'Situa'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label33: TLabel [4]
            Left = 684
            Top = 46
            Width = 29
            Height = 13
            Caption = 'Valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label34: TLabel [5]
            Left = 3
            Top = 49
            Width = 34
            Height = 13
            Caption = 'Bairro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label35: TLabel [6]
            Left = 63
            Top = 49
            Width = 45
            Height = 13
            Caption = 'Quartos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label36: TLabel [7]
            Left = 122
            Top = 48
            Width = 34
            Height = 13
            Caption = 'Vagas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object Label37: TLabel [8]
            Left = 315
            Top = 49
            Width = 61
            Height = 13
            Caption = 'Refer'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          inherited edtValorPesquisa: TEdit
            Left = 3
            Top = 22
            ExplicitLeft = 3
            ExplicitTop = 22
          end
          inherited btnPesquisar: TButton
            Left = 267
            Top = 20
            ExplicitLeft = 267
            ExplicitTop = 20
          end
          object ComboBox1: TComboBox
            Left = 175
            Top = 65
            Width = 134
            Height = 21
            TabOrder = 2
            Visible = False
          end
          object ComboBox2: TComboBox
            Left = 402
            Top = 65
            Width = 134
            Height = 21
            TabOrder = 3
            Visible = False
            Items.Strings = (
              'Venda'
              'Aluguel'
              'Temporada')
          end
          object ComboBox3: TComboBox
            Left = 542
            Top = 65
            Width = 134
            Height = 21
            TabOrder = 4
            Visible = False
          end
          object Edit1: TEdit
            Left = 684
            Top = 65
            Width = 81
            Height = 21
            TabOrder = 5
            Visible = False
          end
          object ComboBox4: TComboBox
            Left = 3
            Top = 65
            Width = 54
            Height = 21
            TabOrder = 6
            Visible = False
          end
          object ComboBox5: TComboBox
            Left = 63
            Top = 65
            Width = 53
            Height = 21
            TabOrder = 7
            Visible = False
          end
          object ComboBox6: TComboBox
            Left = 123
            Top = 65
            Width = 43
            Height = 21
            TabOrder = 8
            Visible = False
          end
          object Edit2: TEdit
            Left = 315
            Top = 65
            Width = 81
            Height = 21
            TabOrder = 9
            Visible = False
          end
        end
        inherited pnlInferior: TPanel
          Top = 438
          Width = 870
          ExplicitTop = 438
          ExplicitWidth = 870
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 870
        ExplicitHeight = 460
        object PageControl1: TPageControl
          Left = 0
          Top = 0
          Width = 870
          Height = 460
          ActivePage = TabSheet3
          Align = alClient
          TabOrder = 0
          object TabSheet3: TTabSheet
            Caption = 'Dados cadastrais'
            object Label1: TLabel
              Left = 7
              Top = 19
              Width = 32
              Height = 13
              Caption = 'T'#237'tulo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label12: TLabel
              Left = 8
              Top = 59
              Width = 65
              Height = 13
              Caption = 'Logradouro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 8
              Top = 99
              Width = 34
              Height = 13
              Caption = 'Bairro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 8
              Top = 138
              Width = 53
              Height = 13
              Caption = 'Munic'#237'pio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label15: TLabel
              Left = 8
              Top = 175
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
            object Label16: TLabel
              Left = 8
              Top = 218
              Width = 20
              Height = 13
              Caption = 'CEP'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label17: TLabel
              Left = 7
              Top = 258
              Width = 79
              Height = 13
              Caption = 'Complemento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtTitulo: TEdit
              Left = 104
              Top = 16
              Width = 409
              Height = 21
              TabOrder = 0
            end
            object edtBairro: TEdit
              Left = 104
              Top = 93
              Width = 409
              Height = 21
              TabOrder = 1
              OnKeyPress = EditPress
            end
            object edtEndereco: TEdit
              Left = 104
              Top = 56
              Width = 409
              Height = 21
              TabOrder = 2
              OnKeyPress = EditPress
            end
            object edtCidade: TEdit
              Left = 104
              Top = 133
              Width = 409
              Height = 21
              TabOrder = 3
              OnKeyPress = EditPress
            end
            object cboUF: TComboBox
              Left = 104
              Top = 170
              Width = 73
              Height = 21
              TabOrder = 4
              Items.Strings = (
                'RN'
                'AL'
                'PE'
                'PB'
                'CE'
                'MG'
                'SP'
                'RJ'
                'RC'
                'BR'
                'BH'
                'MA'
                'SA'
                'AM'
                'MA'
                'PR'
                'PI'
                'SC'
                'SE')
            end
            object edtCEP: TEdit
              Left = 104
              Top = 213
              Width = 145
              Height = 21
              TabOrder = 5
            end
            object edtComplemento: TEdit
              Left = 104
              Top = 251
              Width = 412
              Height = 21
              TabOrder = 6
              OnKeyPress = EditPress
            end
            object Button1: TButton
              Left = 102
              Top = 296
              Width = 75
              Height = 25
              Caption = 'Unidades'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
              OnClick = Button1Click
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Informa'#231#245'es'
            ImageIndex = 1
            TabVisible = False
            object Label2: TLabel
              Left = 18
              Top = 47
              Width = 48
              Height = 13
              Caption = 'Corretor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label3: TLabel
              Left = 18
              Top = 78
              Width = 68
              Height = 13
              Caption = 'Propriet'#225'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label9: TLabel
              Left = 18
              Top = 108
              Width = 39
              Height = 13
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label4: TLabel
              Left = 18
              Top = 138
              Width = 49
              Height = 13
              Caption = 'Situa'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label5: TLabel
              Left = 18
              Top = 166
              Width = 57
              Height = 13
              Caption = 'Finalidade'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label6: TLabel
              Left = 18
              Top = 197
              Width = 24
              Height = 13
              Caption = 'Tipo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label10: TLabel
              Left = 18
              Top = 229
              Width = 51
              Height = 13
              Caption = 'Cadastro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label11: TLabel
              Left = 17
              Top = 268
              Width = 61
              Height = 13
              Caption = 'Refer'#234'ncia'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object SpeedButton5: TSpeedButton
              Left = 432
              Top = 188
              Width = 23
              Height = 22
              Caption = '...'
              Visible = False
              OnClick = SpeedButton5Click
            end
            object SpeedButton3: TSpeedButton
              Left = 431
              Top = 131
              Width = 23
              Height = 22
              Caption = '...'
              Visible = False
              OnClick = SpeedButton3Click
            end
            object SpeedButton4: TSpeedButton
              Left = 431
              Top = 99
              Width = 23
              Height = 22
              Caption = '...'
              Visible = False
              OnClick = SpeedButton4Click
            end
            object SpeedButton2: TSpeedButton
              Left = 431
              Top = 70
              Width = 23
              Height = 22
              Caption = '...'
              Visible = False
              OnClick = SpeedButton2Click
            end
            object SpeedButton1: TSpeedButton
              Left = 431
              Top = 40
              Width = 23
              Height = 22
              Caption = '...'
              Visible = False
              OnClick = SpeedButton1Click
            end
            object Label23: TLabel
              Left = 472
              Top = 14
              Width = 29
              Height = 13
              Caption = 'Valor'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label26: TLabel
              Left = 472
              Top = 46
              Width = 70
              Height = 13
              Caption = 'Comiss'#227'o %'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label27: TLabel
              Left = 472
              Top = 78
              Width = 66
              Height = 13
              Caption = 'Condom'#237'nio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label28: TLabel
              Left = 472
              Top = 108
              Width = 44
              Height = 13
              Caption = 'Entrada'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object cboCodigoResponsavel: TComboBox
              Left = 93
              Top = 40
              Width = 336
              Height = 21
              TabOrder = 0
              Visible = False
            end
            object cboCodigoProprietario: TComboBox
              Left = 92
              Top = 72
              Width = 336
              Height = 21
              TabOrder = 1
              Visible = False
            end
            object cboCodigoCliente: TComboBox
              Left = 93
              Top = 100
              Width = 336
              Height = 21
              TabOrder = 2
              Visible = False
            end
            object cboCodigoSituacao: TComboBox
              Left = 93
              Top = 131
              Width = 336
              Height = 21
              TabOrder = 3
              Visible = False
            end
            object cboFinalidade: TComboBox
              Left = 93
              Top = 159
              Width = 336
              Height = 21
              TabOrder = 4
              Visible = False
              Items.Strings = (
                'Venda'
                'Aluguel'
                'Temporada')
            end
            object cboCodigoTipo: TComboBox
              Left = 93
              Top = 189
              Width = 336
              Height = 21
              TabOrder = 5
              Visible = False
            end
            object dateDataCadastro: TDateTimePicker
              Left = 92
              Top = 224
              Width = 105
              Height = 21
              Date = 41793.600282604170000000
              Time = 41793.600282604170000000
              TabOrder = 6
              Visible = False
            end
            object edtReferencia: TEdit
              Left = 92
              Top = 260
              Width = 114
              Height = 21
              TabOrder = 7
            end
            object edtValorEntrada: TEdit
              Left = 550
              Top = 100
              Width = 81
              Height = 21
              TabOrder = 8
              Visible = False
            end
            object edtValorCondominio: TEdit
              Left = 550
              Top = 70
              Width = 81
              Height = 21
              TabOrder = 9
              Visible = False
            end
            object edtComissaoCorretor: TEdit
              Left = 550
              Top = 38
              Width = 81
              Height = 21
              TabOrder = 10
              Visible = False
            end
            object edtValorVenda: TEdit
              Left = 550
              Top = 6
              Width = 81
              Height = 21
              TabOrder = 11
              Visible = False
            end
            object chkPublicado: TCheckBox
              Left = 663
              Top = 8
              Width = 97
              Height = 17
              Caption = 'Publicado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
              Visible = False
            end
            object chkEmplacado: TCheckBox
              Left = 663
              Top = 40
              Width = 97
              Height = 17
              Caption = 'Emplacado'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
              Visible = False
            end
            object chkPermuta: TCheckBox
              Left = 663
              Top = 72
              Width = 97
              Height = 17
              Caption = 'Permuta'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              Visible = False
            end
            object chkSuspenso: TCheckBox
              Left = 663
              Top = 102
              Width = 97
              Height = 17
              Caption = 'Suspenso'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 15
              Visible = False
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Caracter'#237'scas'
            ImageIndex = 2
            TabVisible = False
            object Label18: TLabel
              Left = 3
              Top = 27
              Width = 59
              Height = 13
              Caption = #193'rea Total'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label19: TLabel
              Left = 3
              Top = 67
              Width = 90
              Height = 13
              Caption = #193'rea cosntruida'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label20: TLabel
              Left = 178
              Top = 67
              Width = 34
              Height = 13
              Caption = 'Vagas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label21: TLabel
              Left = 178
              Top = 27
              Width = 67
              Height = 13
              Caption = 'Dormit'#243'rios'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label22: TLabel
              Left = 507
              Top = 26
              Width = 22
              Height = 13
              Caption = 'Ano'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              Visible = False
            end
            object Label24: TLabel
              Left = 347
              Top = 26
              Width = 56
              Height = 13
              Caption = 'Banheiros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label25: TLabel
              Left = 347
              Top = 66
              Width = 35
              Height = 13
              Caption = 'Suites'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label29: TLabel
              Left = 3
              Top = 117
              Width = 55
              Height = 13
              Caption = 'Descri'#231#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edtAreaTotal: TEdit
              Left = 102
              Top = 20
              Width = 68
              Height = 21
              TabOrder = 0
            end
            object edtAreaConstruida: TEdit
              Left = 102
              Top = 60
              Width = 68
              Height = 21
              TabOrder = 1
            end
            object edtGaragens: TEdit
              Left = 254
              Top = 60
              Width = 74
              Height = 21
              TabOrder = 2
            end
            object edtQuartos: TEdit
              Left = 254
              Top = 20
              Width = 74
              Height = 21
              TabOrder = 3
            end
            object edtAno: TEdit
              Left = 569
              Top = 19
              Width = 81
              Height = 21
              TabOrder = 4
              Visible = False
            end
            object edtBanheiros: TEdit
              Left = 409
              Top = 19
              Width = 81
              Height = 21
              TabOrder = 5
            end
            object edtSuites: TEdit
              Left = 409
              Top = 59
              Width = 81
              Height = 21
              TabOrder = 6
            end
            object memoObservacao: TMemo
              Left = 3
              Top = 136
              Width = 846
              Height = 268
              TabOrder = 7
            end
          end
          object TabSheet6: TTabSheet
            Caption = 'Fotos'
            ImageIndex = 3
            TabVisible = False
            OnShow = TabSheet6Show
            object Image2: TImage
              Left = 216
              Top = 32
              Width = 612
              Height = 360
              Center = True
            end
            object FileListBoxfoto: TFileListBox
              Left = 0
              Top = 0
              Width = 176
              Height = 432
              Align = alLeft
              FileType = [ftArchive, ftNormal]
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBtnText
              Font.Height = 14
              Font.Name = 'Arial'
              Font.Style = []
              ItemHeight = 14
              Mask = '*.jpg;*.jpeg'
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 880
    ExplicitWidth = 880
    inherited btnSair: TSpeedButton
      Left = 795
      Top = 2
      Width = 78
      ExplicitLeft = 795
      ExplicitTop = 2
      ExplicitWidth = 78
    end
  end
end
