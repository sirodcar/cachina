object DmTEF: TDmTEF
  OldCreateOrder = False
  Height = 388
  Width = 540
  object ACBrTEFD1: TACBrTEFD
    Identificacao.NomeAplicacao = 'Thanos'
    Identificacao.VersaoAplicacao = '1.0'
    Identificacao.SoftwareHouse = 'berg'
    Identificacao.RazaoSocial = 'Lindemberg'
    MultiplosCartoes = True
    NumeroMaximoCartoes = 3
    AutoFinalizarCupom = False
    EsperaSTS = 7
    CHQEmGerencial = True
    TEFDial.LogDebug = True
    TEFDial.Habilitado = True
    TEFDial.ArqTemp = 'C:\TEF_DIAL\req\intpos.tmp'
    TEFDial.ArqReq = 'C:\TEF_DIAL\req\intpos.001'
    TEFDial.ArqSTS = 'C:\TEF_DIAL\resp\intpos.sts'
    TEFDial.ArqResp = 'C:\TEF_DIAL\resp\intpos.001'
    TEFDial.GPExeName = 'C:\TEF_DIAL\tef_dial.exe'
    TEFDisc.ArqTemp = 'C:\TEF_Disc\req\intpos.tmp'
    TEFDisc.ArqReq = 'C:\TEF_Disc\req\intpos.001'
    TEFDisc.ArqSTS = 'C:\TEF_Disc\resp\intpos.sts'
    TEFDisc.ArqResp = 'C:\TEF_Disc\resp\intpos.001'
    TEFDisc.GPExeName = 'C:\TEF_Disc\tef_Disc.exe'
    TEFHiper.ArqTemp = 'c:\HiperTEF\req\IntPos.tmp'
    TEFHiper.ArqReq = 'C:\HiperTEF\req\IntPos.001'
    TEFHiper.ArqSTS = 'C:\HiperTEF\resp\IntPos.sts'
    TEFHiper.ArqResp = 'C:\HiperTEF\resp\IntPos.001'
    TEFHiper.GPExeName = 'C:\HiperTEF\HiperTEF.exe'
    TEFCliSiTef.ArqLOG = 'CliSiTef.log'
    TEFCliSiTef.EnderecoIP = '127.0.0.1'
    TEFCliSiTef.CodigoLoja = '00000000'
    TEFCliSiTef.NumeroTerminal = 'SE000001'
    TEFCliSiTef.OnExibeMenu = ACBrTEFD1CliSiTefExibeMenu
    TEFCliSiTef.OnObtemCampo = ACBrTEFD1CliSiTefObtemCampo
    TEFVeSPague.EnderecoIP = 'localhost'
    TEFVeSPague.Porta = '60906'
    TEFVeSPague.TemPendencias = False
    TEFVeSPague.TransacaoCRT = 'Cartao Vender'
    TEFVeSPague.TransacaoCHQ = 'Cheque Consultar'
    TEFVeSPague.TransacaoCNC = 'Administracao Cancelar'
    TEFVeSPague.TransacaoReImpressao = 'Administracao Reimprimir'
    TEFVeSPague.TransacaoPendente = 'Administracao Pendente'
    TEFGPU.ArqTemp = 'C:\TEF_GPU\req\intpos.tmp'
    TEFGPU.ArqReq = 'C:\TEF_GPU\req\intpos.001'
    TEFGPU.ArqSTS = 'C:\TEF_GPU\resp\intpos.sts'
    TEFGPU.ArqResp = 'C:\TEF_GPU\resp\intpos.001'
    TEFGPU.GPExeName = 'C:\TEF_GPU\GPU.exe'
    TEFBanese.ArqTemp = 'C:\bcard\req\pergunta.tmp'
    TEFBanese.ArqReq = 'C:\bcard\req\pergunta.txt'
    TEFBanese.ArqSTS = 'C:\bcard\resp\status.txt'
    TEFBanese.ArqResp = 'C:\bcard\resp\resposta.txt'
    TEFBanese.ArqRespBkp = 'C:\bcard\resposta.txt'
    TEFBanese.ArqRespMovBkp = 'C:\bcard\copiamovimento.txt'
    TEFAuttar.ArqTemp = 'C:\Auttar_TefIP\req\intpos.tmp'
    TEFAuttar.ArqReq = 'C:\Auttar_TefIP\req\intpos.001'
    TEFAuttar.ArqSTS = 'C:\Auttar_TefIP\resp\intpos.sts'
    TEFAuttar.ArqResp = 'C:\Auttar_TefIP\resp\intpos.001'
    TEFAuttar.GPExeName = 'C:\Program Files (x86)\Auttar\IntegradorTEF-IP.exe'
    TEFGood.ArqTemp = 'C:\good\gettemp.dat'
    TEFGood.ArqReq = 'C:\good\getreq.dat'
    TEFGood.ArqSTS = 'C:\good\getstat.dat'
    TEFGood.ArqResp = 'C:\good\getresp.dat'
    TEFGood.GPExeName = 'C:\good\GETGoodMed.exe'
    TEFFoxWin.ArqTemp = 'C:\FwTEF\req\intpos.tmp'
    TEFFoxWin.ArqReq = 'C:\FwTEF\req\intpos.001'
    TEFFoxWin.ArqSTS = 'C:\FwTEF\rsp\intpos.sts'
    TEFFoxWin.ArqResp = 'C:\FwTEF\rsp\intpos.001'
    TEFFoxWin.GPExeName = 'C:\FwTEF\bin\FwTEF.exe'
    TEFCliDTEF.ArqResp = ''
    TEFPetrocard.ArqTemp = 'C:\CardTech\req\intpos.tmp'
    TEFPetrocard.ArqReq = 'C:\CardTech\req\intpos.001'
    TEFPetrocard.ArqSTS = 'C:\CardTech\resp\intpos.sts'
    TEFPetrocard.ArqResp = 'C:\CardTech\resp\intpos.001'
    TEFPetrocard.GPExeName = 'C:\CardTech\sac.exe'
    TEFCrediShop.ArqTemp = 'C:\tef_cshp\req\intpos.tmp'
    TEFCrediShop.ArqReq = 'C:\tef_cshp\req\intpos.001'
    TEFCrediShop.ArqSTS = 'C:\tef_cshp\resp\intpos.sts'
    TEFCrediShop.ArqResp = 'C:\tef_cshp\resp\intpos.001'
    TEFCrediShop.GPExeName = 'C:\tef_cshp\vpos_tef.exe'
    TEFTicketCar.ArqTemp = 'C:\TCS\TX\INTTCS.tmp'
    TEFTicketCar.ArqReq = 'C:\TCS\TX\INTTCS.001'
    TEFTicketCar.ArqSTS = 'C:\TCS\RX\INTTCS.RET'
    TEFTicketCar.ArqResp = 'C:\TCS\RX\INTTCS.001'
    TEFTicketCar.GPExeName = 'C:\TCS\tcs.exe'
    TEFTicketCar.NumLoja = 0
    TEFTicketCar.NumCaixa = 0
    TEFTicketCar.AtualizaPrecos = False
    TEFConvCard.ArqTemp = 'C:\ger_convenio\tx\crtsol.tmp'
    TEFConvCard.ArqReq = 'C:\ger_convenio\tx\crtsol.001'
    TEFConvCard.ArqSTS = 'C:\ger_convenio\rx\crtsol.ok'
    TEFConvCard.ArqResp = 'C:\ger_convenio\rx\crtsol.001'
    TEFConvCard.GPExeName = 'C:\ger_convcard\convcard.exe'
    OnAguardaResp = ACBrTEFD1AguardaResp
    OnExibeMsg = ACBrTEFD1ExibeMsg
    OnBloqueiaMouseTeclado = ACBrTEFD1BloqueiaMouseTeclado
    OnComandaECF = ACBrTEFD1ComandaECF
    OnComandaECFSubtotaliza = ACBrTEFD1ComandaECFSubtotaliza
    OnComandaECFAbreVinculado = ACBrTEFD1ComandaECFAbreVinculado
    OnComandaECFImprimeVia = ACBrTEFD1ComandaECFImprimeVia
    OnInfoECF = ACBrTEFD1InfoECF
    Left = 252
    Top = 97
  end
  object frxRelatorioGerencialNFCe: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41598.679307719900000000
    ReportOptions.LastChange = 42320.497792118000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 252
    Top = 160
    Datasets = <
      item
      end
      item
      end
      item
      end>
    Variables = <
      item
        Name = ' Cabecalho'
        Value = Null
      end
      item
        Name = 'lsRazaoSocialEmpresa'
        Value = #39#39
      end
      item
        Name = 'lsCNPJEmpresa'
        Value = #39#39
      end
      item
        Name = 'lsEnderecoEmpresa'
        Value = #39#39
      end
      item
        Name = 'lsInscricaoEstadual'
        Value = #39#39
      end
      item
        Name = 'lsMunicipioEmpresa'
        Value = #39#39
      end
      item
        Name = 'lsTextoRelatorioGerencial'
        Value = #39#39
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 18.118120000000000000
        Top = 18.897650000000000000
        Width = 264.567100000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Left = 2.779530000000000000
          Top = 0.666666670000001400
          Width = 260.787401570000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'FontB11'
          Font.Style = []
          Memo.UTF8W = (
            '[lsTextoRelatorioGerencial]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 80.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 2.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        Height = 18.118120000000000000
        Top = 18.897650000000000000
        Width = 264.567100000000000000
        Stretched = True
        object Memo9: TfrxMemoView
          Left = 2.779530000000000000
          Top = 0.666666670000001400
          Width = 260.787401570000000000
          Height = 15.118120000000000000
          StretchMode = smMaxHeight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'FontB11'
          Font.Style = []
          Memo.UTF8W = (
            '[lsTextoRelatorioGerencial]')
          ParentFont = False
        end
      end
    end
  end
  object cdsTEF: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NSU'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'CodigoAutorizacao'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'RedeTEF'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NSU_HOST'
        DataType = ftString
        Size = 9
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 251
    Top = 228
    object cdsTEFNSU: TStringField
      FieldName = 'NSU'
      Size = 9
    end
    object cdsTEFCodigoAutorizacao: TStringField
      FieldName = 'CodigoAutorizacao'
      Size = 255
    end
    object cdsTEFValor: TFloatField
      FieldName = 'Valor'
    end
    object cdsTEFCodigoBandeiraTEF: TStringField
      FieldName = 'RedeTEF'
      Size = 10
    end
    object cdsTEFNSU_HOST: TStringField
      FieldName = 'NSU_HOST'
      Size = 9
    end
  end
end
