inherited FormPlanoContasDetalhes: TFormPlanoContasDetalhes
  Caption = 'Plano de Contas'
  ClientHeight = 506
  ClientWidth = 822
  ExplicitWidth = 838
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 822
    Height = 457
    ExplicitTop = 50
    ExplicitWidth = 822
    ExplicitHeight = 457
    inherited tabPrincipal: TPageControl
      Width = 820
      Height = 455
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitHeight = 464
        inherited grdEntidade: TDBGrid
          Width = 812
          Height = 340
          Columns = <
            item
              Expanded = False
              FieldName = 'Codificacao'
              Width = 113
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 402
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Tipo'
              Width = 79
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Natureza'
              Width = 167
              Visible = True
            end>
        end
        inherited pnlSuperior: TPanel
          Width = 812
        end
        inherited pnlInferior: TPanel
          Top = 405
          Width = 812
          ExplicitTop = 442
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 7
        ExplicitTop = 24
        ExplicitWidth = 812
        ExplicitHeight = 427
        object lbDescricao: TLabel
          Left = 17
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Descricao'
        end
        object lbCodificacao: TLabel
          Left = 17
          Top = 21
          Width = 55
          Height = 13
          Caption = 'Codificacao'
        end
        object Label1: TLabel
          Left = 17
          Top = 91
          Width = 20
          Height = 13
          Caption = 'Tipo'
        end
        object Label2: TLabel
          Left = 17
          Top = 131
          Width = 44
          Height = 13
          Caption = 'Natureza'
        end
        object edtCodificacao: TEdit
          Left = 80
          Top = 17
          Width = 152
          Height = 21
          TabOrder = 0
        end
        object edtDescricao: TEdit
          Left = 80
          Top = 52
          Width = 504
          Height = 21
          TabOrder = 1
        end
        object cboTipo: TComboBox
          Left = 80
          Top = 88
          Width = 145
          Height = 21
          TabOrder = 2
          Items.Strings = (
            'C'
            'D')
        end
        object cboNatureza: TComboBox
          Left = 80
          Top = 128
          Width = 228
          Height = 21
          TabOrder = 3
          Items.Strings = (
            'Conta de Ativo'
            'Conta de Passivo'
            'Patrimonio Liquido'
            'Conta de Resultado'
            'Conta de compensa'#231#227'o'
            'Outras')
        end
      end
    end
  end
  inherited Panel2: TPanel
    Width = 822
  end
  inherited srcEntidade: TDataSource
    Left = 24
    Top = 318
  end
  inherited srcPesquisa: TDataSource
    Left = 96
    Top = 326
  end
  inherited PopupRelatorio: TPopupMenu
    Left = 197
    Top = 330
  end
end
