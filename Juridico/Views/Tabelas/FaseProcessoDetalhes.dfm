inherited FormFaseProcessoDetalhes: TFormFaseProcessoDetalhes
  Caption = 'FormFaseProcessoDetalhes'
  ExplicitWidth = 656
  ExplicitHeight = 516
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      ActivePage = TabSheet1
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 630
        ExplicitHeight = 399
        inherited grdEntidade: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'Codigo'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 508
              Visible = True
            end>
        end
      end
      inherited TabSheet2: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 630
        ExplicitHeight = 399
        object Label1: TLabel
          Left = 32
          Top = 16
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object edtDescricao: TEdit
          Left = 32
          Top = 32
          Width = 545
          Height = 21
          TabOrder = 0
          OnKeyPress = EditPress
        end
      end
    end
  end
end
