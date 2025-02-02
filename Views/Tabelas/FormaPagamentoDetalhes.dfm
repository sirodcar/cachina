inherited FormFormaPagamentoDetalhes: TFormFormaPagamentoDetalhes
  Caption = 'Formas Pagamento'
  ClientHeight = 538
  ClientWidth = 866
  ExplicitWidth = 882
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 866
    Height = 489
    ExplicitWidth = 866
    ExplicitHeight = 489
    inherited tabPrincipal: TPageControl
      Width = 864
      Height = 487
      ActivePage = TabSheet2
      ExplicitWidth = 864
      ExplicitHeight = 487
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 856
        ExplicitHeight = 459
        inherited grdEntidade: TDBGrid
          Width = 856
          Height = 372
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 422
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NumeroParcelas'
              Title.Caption = 'Parcelas'
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Padrao'
              Title.Caption = 'Padr'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BaixaAutomatica'
              Title.Caption = 'Baixa Automatica'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TaxaCartao'
              Title.Caption = 'Taxa'
              Visible = True
            end>
        end
        inherited pnlSuperior: TPanel
          Width = 856
          ExplicitWidth = 856
        end
        inherited pnlInferior: TPanel
          Top = 437
          Width = 856
          ExplicitTop = 437
          ExplicitWidth = 856
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 856
        ExplicitHeight = 459
        object lbDescriacao: TLabel
          Left = 8
          Top = 32
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
        object Label1: TLabel
          Left = 11
          Top = 75
          Width = 71
          Height = 13
          Caption = 'Qtd Parcelas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 11
          Top = 115
          Width = 67
          Height = 13
          Caption = 'Vencimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 159
          Top = 115
          Width = 23
          Height = 13
          Caption = 'dias'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 227
          Width = 47
          Height = 13
          Caption = '% Juros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 267
          Width = 48
          Height = 13
          Caption = '% Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 307
          Width = 44
          Height = 13
          Caption = '% Taxa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 159
          Top = 307
          Width = 133
          Height = 13
          Caption = '% Taxa de antecipa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 367
          Top = 307
          Width = 103
          Height = 13
          Caption = 'Dias anteciapa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 528
          Top = 35
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
        object edtDescricao: TEdit
          Tag = 1
          Left = 88
          Top = 32
          Width = 426
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPress
        end
        object edtNumeroParcelas: TEdit
          Tag = 1
          Left = 88
          Top = 72
          Width = 65
          Height = 21
          TabOrder = 1
        end
        object chkBaixaAutomatica: TCheckBox
          Left = 85
          Top = 190
          Width = 120
          Height = 17
          Caption = 'Baixa autom'#225'tica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object chkPadrao: TCheckBox
          Left = 85
          Top = 159
          Width = 97
          Height = 17
          Caption = 'Padr'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object edtDiasVencimento: TEdit
          Tag = 1
          Left = 88
          Top = 112
          Width = 65
          Height = 21
          TabOrder = 4
        end
        object edtJuros: TEdit
          Tag = 1
          Left = 85
          Top = 224
          Width = 65
          Height = 21
          TabOrder = 5
        end
        object edtMulta: TEdit
          Tag = 1
          Left = 85
          Top = 264
          Width = 65
          Height = 21
          TabOrder = 6
        end
        object edtTaxaCartao: TEdit
          Tag = 1
          Left = 88
          Top = 304
          Width = 65
          Height = 21
          TabOrder = 7
        end
        object edtTaxaAntecipacao: TEdit
          Tag = 1
          Left = 298
          Top = 304
          Width = 65
          Height = 21
          TabOrder = 8
        end
        object edtDiasAntecipacao: TEdit
          Tag = 1
          Left = 476
          Top = 304
          Width = 65
          Height = 21
          TabOrder = 9
        end
        object GroupBox1: TGroupBox
          Left = 574
          Top = 71
          Width = 227
          Height = 126
          Caption = 'Cart'#227'o'
          TabOrder = 10
          object Label9: TLabel
            Left = 16
            Top = 24
            Width = 80
            Height = 13
            Caption = 'CNPJ Operadora'
          end
          object Label10: TLabel
            Left = 18
            Top = 69
            Width = 78
            Height = 13
            Caption = 'Codigo Bandeira'
          end
          object edtCNPJOperadoraCartao: TEdit
            Tag = 1
            Left = 16
            Top = 44
            Width = 193
            Height = 21
            TabOrder = 0
          end
          object cboCodigoBandeiraTEF: TComboBox
            Left = 16
            Top = 88
            Width = 145
            Height = 21
            Hint = 
              '01- Visa  02 - Master 03 - AmericaExpress  04-Sorocred 05 - Dine' +
              'rsClub 06- ELO 07 - Hiper'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            Items.Strings = (
              '01'
              '02'
              '03'
              '04'
              '05'
              '06'
              '07')
          end
        end
        object cboCodigoTipoPagamento: TComboBox
          Left = 572
          Top = 32
          Width = 92
          Height = 21
          Hint = '01 - Dinheiro 02 -Cheque 03 - Credito 04 - Debito 11 - Boleto'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '11')
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 866
    ExplicitWidth = 866
  end
  inherited srcEntidade: TDataSource
    Left = 120
    Top = 398
  end
  inherited srcPesquisa: TDataSource
    Left = 48
    Top = 398
  end
end
