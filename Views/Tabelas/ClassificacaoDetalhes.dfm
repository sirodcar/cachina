inherited FormClassificacaoDetalhes: TFormClassificacaoDetalhes
  Caption = 'TemplateFormComTabGridDetalhes1'
  FormStyle = fsStayOnTop
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited tabPrincipal: TPageControl
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      inherited TabSheet2: TTabSheet
        object Label1: TLabel
          Left = 8
          Top = 17
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
        object Label2: TLabel
          Left = 10
          Top = 52
          Width = 53
          Height = 13
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtDescricao: TEdit
          Left = 77
          Top = 16
          Width = 422
          Height = 21
          TabOrder = 1
          OnKeyPress = EditPress
        end
        object edtDesconto: TEdit
          Left = 77
          Top = 49
          Width = 82
          Height = 21
          TabOrder = 0
        end
      end
    end
  end
end
