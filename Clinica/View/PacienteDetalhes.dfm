inherited FormPacienteDetalhes: TFormPacienteDetalhes
  Caption = 'Paciente'
  ClientHeight = 572
  ClientWidth = 694
  Visible = False
  ExplicitWidth = 710
  ExplicitHeight = 610
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 694
    Height = 523
    ExplicitWidth = 694
    ExplicitHeight = 523
    object Label2: TLabel
      Left = 24
      Top = 45
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label3: TLabel
      Left = 24
      Top = 77
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object Label4: TLabel
      Left = 24
      Top = 141
      Width = 47
      Height = 13
      Caption = 'Telefones'
    end
    object Label5: TLabel
      Left = 24
      Top = 201
      Width = 80
      Height = 13
      Caption = 'Data nascimento'
    end
    object Label7: TLabel
      Left = 24
      Top = 173
      Width = 61
      Height = 13
      Caption = 'Naturalidade'
    end
    object Label9: TLabel
      Left = 24
      Top = 300
      Width = 37
      Height = 13
      Caption = 'Religi'#227'o'
    end
    object Label11: TLabel
      Left = 24
      Top = 326
      Width = 45
      Height = 13
      Caption = 'Conv'#234'nio'
    end
    object Label13: TLabel
      Left = 24
      Top = 355
      Width = 18
      Height = 13
      Caption = 'CID'
    end
    object Label12: TLabel
      Left = 288
      Top = 326
      Width = 69
      Height = 13
      Caption = 'N'#186' da Carteira'
    end
    object Label10: TLabel
      Left = 288
      Top = 300
      Width = 44
      Height = 13
      Caption = 'Profiss'#227'o'
    end
    object Label1: TLabel
      Left = 552
      Top = 101
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object Label6: TLabel
      Left = 296
      Top = 101
      Width = 43
      Height = 13
      Caption = 'Munic'#237'pio'
    end
    object Label14: TLabel
      Left = 24
      Top = 106
      Width = 28
      Height = 13
      Caption = 'Bairro'
    end
    object Label18: TLabel
      Left = 325
      Top = 201
      Width = 14
      Height = 13
      Caption = 'RG'
    end
    object SpeedButton2: TSpeedButton
      Left = 256
      Top = 318
      Width = 24
      Height = 22
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object Label15: TLabel
      Left = 296
      Top = 133
      Width = 26
      Height = 13
      Caption = 'Emaill'
    end
    object lbIdade: TLabel
      Left = 219
      Top = 201
      Width = 28
      Height = 13
      Caption = 'Idade'
    end
    object Label19: TLabel
      Left = 539
      Top = 10
      Width = 44
      Height = 13
      Caption = 'Cadastro'
    end
    object Label20: TLabel
      Left = 24
      Top = 9
      Width = 61
      Height = 13
      Caption = 'Respons'#225'vel'
    end
    object edtNome: TEdit
      Tag = 1
      Left = 120
      Top = 37
      Width = 559
      Height = 21
      TabOrder = 0
    end
    object edtEndereco: TEdit
      Left = 120
      Top = 69
      Width = 559
      Height = 21
      TabOrder = 1
    end
    object edtTelefones: TEdit
      Left = 120
      Top = 133
      Width = 169
      Height = 21
      TabOrder = 2
    end
    object edtNaturalidade: TEdit
      Left = 120
      Top = 165
      Width = 169
      Height = 21
      TabOrder = 5
    end
    object cboReligiao: TComboBox
      Left = 120
      Top = 292
      Width = 129
      Height = 21
      TabOrder = 10
      Items.Strings = (
        'Cat'#243'lico'
        'Evang'#233'lico'
        'Espirita'
        'Judeu'
        'Budista'
        'Islamico'
        'Indu'
        'Ateu'
        'Espiritualista independente')
    end
    object cboCodigoConvenio: TComboBox
      Left = 120
      Top = 318
      Width = 129
      Height = 21
      TabOrder = 13
    end
    object edtNumeroCarteira: TEdit
      Left = 360
      Top = 318
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object TabControl2: TPageControl
      Left = 16
      Top = 379
      Width = 667
      Height = 132
      ActivePage = TabSheet3
      TabOrder = 4
      object TabSheet3: TTabSheet
        Caption = 'Queixa inicial'
        object memoQueixa: TMemo
          Left = 8
          Top = 8
          Width = 641
          Height = 89
          TabOrder = 0
        end
      end
      object TabSheet4: TTabSheet
        Caption = 'Antecedentes cl'#237'nicos'
        object memoAntecedentes: TMemo
          Left = 8
          Top = 8
          Width = 641
          Height = 89
          TabOrder = 0
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Medica'#231#245'es'
        object memoMedicacoes: TMemo
          Left = 8
          Top = 8
          Width = 641
          Height = 89
          TabOrder = 0
        end
      end
    end
    object cboProfissao: TComboBox
      Left = 360
      Top = 292
      Width = 273
      Height = 21
      DropDownCount = 15
      TabOrder = 6
      Items.Strings = (
        'ABASTECEDOR DE MERCADORIAS'
        'ABATEDOR'
        'ACABAMENTO'
        'A'#199'OUGUEIRO'
        'ADMINISTRADOR DE REDES'
        'ADMINISTRADOR(A)'
        'ADVOGADO(A)'
        'AEROVI'#193'RIO'
        'AGENCIADOR DE IM'#211'VEIS'
        'AGENTE'
        'AGENTE ADMINISTRATIVO'
        'AGENTE DE COBRAN'#199'A'
        'AGENTE DE CR'#201'DITO'
        'AGENTE DE EDEMIAS'
        'AGENTE DE INVESTIGA'#199#195'O'
        'AGENTE DE PORTARIA'
        'AGENTE DE SAUDE'
        'AGENTE DE SEGRURAN'#199'A'
        'AGENTE DE VIAGEM'
        'AGENTE PENITENCIARIO'
        'AGRICULTOR'
        'AGRICULTOR (A)'
        'AGRONOMO'
        'AGROPECUARISTA'
        'AJUDANTE'
        'AJUDANTE DE CARGAS'
        'AJUDANTE DE DEP'#211'SITO'
        'AJUDANTE DE ENTREGA'
        'AJUDANTE DE MOTORISTA'
        'AJUDANTE DE PEDREIRO'
        'AJUDANTE DE PRODU'#199#195'O'
        'AJUSTADOR'
        'ALINHADOR'
        'ALINHADOR MEC'#194'NICO'
        'ALMOXARIFE'
        'AMBIENTALISTA'
        'AMBULANTE'
        'ANALISTA ADMINISTRATIVO'
        'ANALISTA DE CR'#201'DITO'
        'ANALISTA DE ROTA'
        'ANALISTA DE SISTEMAS'
        'ANALISTA DE SUPORTE'
        'ANALISTA TRIBUT'#193'RIO'
        'APLICADOR DE PELICULAS'
        'APOSENTADO (A)'
        'AQUICULTORA'
        'ARMADOR'
        'ARMAZENISTA'
        'ARQUITETO (A)'
        'ARQUIVISTA'
        'ARTES'#195
        'ASCENSORISTA'
        'ASG'
        'ASSESORISTA'
        'ASSESSORA DE CR'#201'DITO'
        'ASSESSORA DE ENCAMINHAMENTO'
        'ASSIST. ADM. FINANCEIRO'
        'ASSIST. ADMINISTRATIVO(A)'
        'ASSISTENTE COMERCIAL'
        'ASSISTENTE DE CONTABILIDADE'
        'ASSISTENTE DE PRODU'#199#195'O'
        'ASSISTENTE GERAL'
        'ASSISTENTE SOCIAL'
        'ASSISTENTE TEC. EM SA'#218'DE'
        'ASSITENTE DE LABORAT'#211'RIO'
        'ATENDENTE'
        'AUDITOR DA RECEITA FEDERAL'
        'AUDITOR FISCAL ESTADUAL'
        'AUTONOMO'
        'AUX. ADMINISTRATIVO'
        'AUX. BOMBEIRO HIDRAULICO'
        'AUX. DE ALMOXERIFADO'
        'AUX. DE ARMADOR'
        'AUX. DE ARQUIVO'
        'AUX. DE AUDITORIA'
        'AUX. DE CARPINTEIRO'
        'AUX. DE CONSULTORIO'
        'AUX. DE COZINHA'
        'AUX. DE DEP'#211'SITO'
        'AUX. DE EMBALAGEM'
        'AUX. DE ENCANADOR'
        'AUX. DE ENFERMAGEM'
        'AUX. DE ENTREGA'
        'AUX. DE ESCRITORIO'
        'AUX. DE FARMACIA'
        'AUX. DE IDENTIFICA'#199#195'O'
        'AUX. DE LABORAT'#211'RIO'
        'AUX. DE LANTERNAGEM'
        'AUX. DE MANUTEN'#199#195'O'
        'AUX. DE MARCENARIA'
        'AUX. DE MEC'#194'NICO'
        'AUX. DE MONITOR (A)'
        'AUX. DE MONITORA'
        'AUX. DE ODONTOLOGIA'
        'AUX. DE PINTURA'
        'AUX. DE PRODU'#199#195'O'
        'AUX. DE SECRETARIA'
        'AUX. DE SERV. CORRELATOS'
        'AUX. DE TESOURARIA'
        'AUX. DE TURISMO'
        'AUX. ODONTOLOGIA'
        'AUX. OPERACIONAL'
        'AUX. SAL'#195'O'
        'AUX. TECNICO'
        'AUXILIAR'
        'AUXILIAR AGR'#205'COLA'
        'AUXILIAR DE COBRAN'#199'A'
        'AUXILIAR DE COMPRAS'
        'AUXILIAR DE CONTABILIDADE'
        'AUXILIAR DE COZINHA'
        'AUXILIAR DE CR'#201'DITO'
        'AUXILIAR DE ELETRICISTA'
        'AUXILIAR DE EXPEDI'#199#195'O'
        'AUXILIAR DE LAVANDERIA'
        'AUXILIAR DE MANUTEN'#199#195'O'
        'AUXILIAR DE MONTADOR'
        'AUXILIAR DE NUTRICIONISTA'
        'AUXILIAR DE PADARIA'
        'AUXILIAR DE PADARIA'
        'AUXILIAR DE PEDREIRO'
        'AUXILIAR DE PRODU'#199#195'O'
        'AUXILIAR DE REDES'
        'AUXILIAR DE REFRIGERA'#199#195'O'
        'AUXILIAR DE SAUDE'
        'AUXILIAR DE TOPOGRAFIA'
        'AUXILIAR DE VENDAS'
        'BAB'#193
        'BALCONISTA'
        'BANCARIO'
        'BARMAN'
        'BETONEIRO'
        'BIBLIOTECARIA'
        'BIOLOGO (A)'
        'BIOQUIMICO(A)'
        'BOMBEIRO MILITAR'
        'BOMBEITO HIDR'#193'ULICO'
        'BOMBISTA'
        'BORRACHEIRO(A)'
        'BUGUEIRO'
        'CABELEREIRO (A)'
        'CALCETEIRO'
        'CALDERISTA'
        'CAMARISTA'
        'CAMINHONEIRO'
        'CANTOR (A)'
        'CAPOTARIA'
        'CAPOTEIRO'
        'CARPINTEIRO'
        'CARROCEIRO'
        'CARTEIRO'
        'CASEIRO'
        'CHAPEIRO'
        'CHAVEIRO'
        'CHEFE DE COZINHA'
        'CHEFE DE MANUTEN'#199#195'O'
        'CHEFE DE PISTA'
        'CHURRASQUEIRO'
        'CINEGRAFISTA'
        'CIRURGI'#195'O DENTISTA'
        'COBRADOR'
        'COMERCIANTE'
        'COMERCI'#193'RIO'
        'COMPOSITOR GRAFICO'
        'COMPRADOR'
        'CONFECCIONADOR'
        'CONFECCIONADOR GR'#193'FICO'
        'CONFEITEIRO (A)'
        'CONFERENTE DE MERCADORIAS'
        'CONSELHEIRO TUTELAR'
        'CONSTRUTOR CIVIL'
        'CONSULTOR DE VENDAS'
        'CONSULTOR EMPRESARIAL'
        'CONSULTOR OPERACIONAL'
        'CONSULTORA'
        'CONTABILISTA'
        'CONTADOR'
        'CONTADORA'
        'CONTROLE DE PRODU'#199#195'O'
        'COODERNADOR'
        'COORDENADORA'
        'COPEIRA'
        'COPEIRO'
        'CORDENADOR T'#201'CNICO'
        'CORDENADORA DE MERCHANDISING'
        'CORRETOR(A)'
        'CORTADOR BLOQUEAD. DE ACAB. GRAFICAS'
        'CORTADOR DE ROUPAS'
        'COSTUREIRO (A)'
        'COVEIRO'
        'COZINHEIRO(A)'
        'CREDIARISTA'
        'DAMA DE COMPANHIA'
        'DAN'#199'ARINA'
        'DECORADOR'
        'DECORADORA'
        'DELEGADO (A)'
        'DEMONSTRADOR (A)'
        'DENTISTA'
        'DEPILADORA'
        'DESEMPREGADO'
        'DESENHISTA TECNICO'
        'DESIGN GR'#193'FICO'
        'DESPACHANTE'
        'DESSOSADOR'
        'DIARISTA'
        'DIGITADOR'
        'DIRETOR ADMINISTRATIVO'
        'DJ'
        'DO LAR'
        'DOCEIRO (A)'
        'DOM'#201'STICA'
        'DOMESTICO'
        'EC'#211'LOGO'
        'ECONOMISTA'
        'ELETRICISTA'
        'ELETRICISTA INDUSTRIAL'
        'ELETRICITARIO(A)'
        'ELETROT'#201'CNICO'
        'EMBALADOR'
        'EMPACOTADOR'
        'EMPRES'#193'RIO'
        'ENC. MANUTEN'#199#195'O'
        'ENCANADOR'
        'ENCARREGADA DE CONFER'#202'NCIA'
        'ENCARREGADO DE DEP'#211'SITO'
        'ENCARREGADO DE LOJISTA'
        'ENCARREGADO DE OBRAS'
        'ENCARREGADO DE PISCINA'
        'ENCARREGADO DE SEGURAN'#199'A'
        'ENCARREGADO DO SETOR PESSOAL'
        'ENFERMEIRO(A)'
        'ENG. ELETRICO (A)'
        'ENG. MECANICO'
        'ENG. QU'#205'MICO'
        'ENGENHEIRO'
        'ENGENHEIRO AGRONOMO'
        'ENGENHEIRO CIVIL'
        'ENGOMADOR'
        'ENTREGADOR'
        'ESCRITU'#193'RIO'
        'ESCRITURADOR FISCAL'
        'ESPETOR DE ALUNO'
        'ESPETOR DE SEGURAN'#199'A'
        'ESTAGIARIO(A)'
        'ESTAMPADOR'
        'ESTETICISTA'
        'ESTOFADOR'
        'ESTOQUISTA'
        'ESTUDANTE'
        'ESTUDANTE'
        'EXECUTIVO'
        'FARMACEUTICA'
        'FARMAC'#201'UTICO'
        'FEIRANTE'
        'FERRAMENTEIRO'
        'FERREIRO'
        'FIL'#211'SOFA'
        'FISCAL'
        'FISCAL DE OBRAS'
        'FISICO'
        'FISIOTERAPEUTA'
        'FONOAUDIOLOGA'
        'FORNEIRO'
        'FOTOGR'#193'FO'
        'FOTOGRAVADOR GRAFICO'
        'FRENTISTA'
        'FUNCIONARIA PUBLICA'
        'FUNCION'#193'RIA P'#218'BLICA ESTADUAL'
        'FUNCION'#193'RIA P'#218'BLICA ESTADUAL APOSENTADA'
        'FUNCION'#193'RIA PUBLICA FEDERAL'
        'FUNCION'#193'RIA P'#218'BLICA FEDERAL - FUNASA'
        'FUNCION'#193'RIA P'#218'BLICA FEDERAL - INSS'
        'FUNCION'#193'RIA P'#218'BLICA FEDERAL APOSENTADA'
        'FUNCION'#193'RIA P'#218'BLICA MUNICIPAL'
        'FUNCIONARIO PUBLICO'
        'FUNCION'#193'RIO P'#218'BLICO'
        'FUNCIONARIO PUBLICO APOSENTADO'
        'FUNCION'#193'RIO P'#218'BLICO ESTADUAL'
        'FUNCION'#193'RIO P'#218'BLICO ESTADUAL APOSENTADO'
        'FUNCIONARIO PUBLICO FEDERAL'
        'FUNCION'#193'RIO P'#218'BLICO FEDERAL - DNOCS'
        'FUNCION'#193'RIO P'#218'BLICO FEDERAL - INSS'
        'FUNCION'#193'RIO P'#218'BLICO FEDERAL - MINIST'#201'RIO DA FAZ.'
        'FUNCION'#193'RIO P'#218'BLICO FEDERAL - MINIST'#201'RIO DA SA'#218'DE'
        'FUNCION'#193'RIO P'#218'BLICO MUNICIPAL'
        'FUNCION'#193'RIO P'#218'BLICO MUNICIPAL'
        'GALVANIZADOR'
        'GAR'#199'OM'
        'GAR'#199'ONETE'
        'GARI'
        'GAURDETE'
        'GE'#211'GRAFO'
        'GEOLOGO'
        'GERENCIADOR DE SEGURAN'#199'A'
        'GERENTE'
        'GERENTE DE RECURSOS HUMANOS'
        'GESSEIRO'
        'GESTOR DE RH SENIOR'
        'GR'#193'FICO'
        'GUARDA DE SEGURAN'#199'A'
        'GUARDA MUNICIPAL'
        'GUIA TURISTICO'
        'GUINCHEIRO'
        'HOTELEIRO'
        'IMPRESSOR OFF-SET'
        'IMPRESSOR TIPOGRAFICO'
        'INDUSTRI'#193'RIO'
        'INSTALADOR'
        'INSTALADOR DE '#193'UDIO'
        'INSTALADOR DE TEFEFONE PUBLICO'
        'INSTRUTOR'
        'JARDINEIRO'
        'JOGADOR'
        'JORNALISTA'
        'JUIZ'
        'LABORATORISTA'
        'LAMINADOR'
        'LANTERNEIRO'
        'LAVADEIRA(O)'
        'LAVADOR'
        'LAVADOR DE VE'#205'CULOS'
        'LEITURISTA'
        'LICHADOR'
        'LIDER DE SETOR'
        'LOCUTOR'
        'MAESTRO'
        'MANICURE'
        'MANIPULADOR DE M'#193'QUINAS'
        'MAQUEIRO'
        'MAQUINISTA'
        'MARCENEIRO'
        'MARISQUEIRO(A)'
        'MARITIMO'
        'MASSAGISTA'
        'MASSOTERAPEUTA'
        'MEC'#194'NICO'
        'MEC'#194'NICO INDUSTRIAL'
        'M'#201'DICO'
        'MEDICO VETERINARIO(A)'
        'MENSAGEIRO'
        'MERENDEIRA'
        'MESTRE DE OBRA'
        'METALURGICO'
        'MICROEMPRES'#193'RIO'
        'MILITAR'
        'MILITAR DA RESERVA REMUNERADA'
        'MILITAR REFORMANDO'
        'MONTADOR'
        'MONTADOR DE AUTOMOTIVO'
        'MONTADOR DE MOVEIS'
        'MONTADOR DE PALCO'
        'MONTADOR INDUSTRIAL'
        'MOTOBOY'
        'MOTOQUEIRA'
        'MOTOQUEIRO'
        'MOTORISTA'
        'MOTORISTA'
        'MOTORISTA- CARRETEIRO'
        'MOTOTAXISTA'
        'MULTIPLICADORA DE VALIDADE'
        'MUSICO'
        'M'#218'SICO'
        'NECROPCISTA'
        'NUTRICIONISTA'
        'OBSERVADORA'
        'OFFICE BOY'
        'OPERADOR'
        'OPERADOR DE BOMBA'
        'OPERADOR DE CAIXA'
        'OPERADOR DE C'#194'MBIO'
        'OPERADOR DE COBRAN'#199'A'
        'OPERADOR DE EMBALAGEM'
        'OPERADOR DE EMPILHADEIRA'
        'OPERADOR DE ESTAMPARIA'
        'OPERADOR DE FABRICA'#199#195'O'
        'OPERADOR DE HIPERMERCADO'
        'OPERADOR DE LAVANDERIA'
        'OPERADOR DE LOJA'
        'OPERADOR DE SISTEMAS'
        'OPERADOR DE TELEMARKETING'
        'OPERADORA DE M'#193'QUINA'
        'OPERARIO'
        'ORIENTADOR (A)'
        'PADEIRO'
        'PANFLETISTA'
        'PASTELEIRO'
        'PASTOR'
        'PATINADORA'
        'PECUARISTA'
        'PEDAGOGA'
        'PEDREIRO'
        'PENSIONISTA'
        'PERFURADOR DE PO'#199'O'
        'PERMISSION'#193'RIO'
        'PERSONAL'
        'PESCADOR'
        'PETROLEIRO'
        'PINTOR'
        'PINTOR DE MOVEIS'
        'PISCINEIRO'
        'PLANTONISTA'
        'PLATAFORMISTA'
        'PODADOR'
        'POLICIAL CIVIL'
        'POLICIAL MILITAR'
        'POLIDOR'
        'PONTEADOR'
        'PORTEIRO'
        'PORTU'#193'RIA'
        'PRESTADOR DE SERVI'#199'O'
        'PROFESSOR (A)'
        'PROFISSIONAL DE MARKETING'
        'PROFISSIONAL LIBERAL'
        'PROGRAMADOR'
        'PROGRAMADOR MUSICAL'
        'PROMOTOR DE EVENTOS'
        'PROMOTOR DE VENDAS'
        'PROT'#201'TICO'
        'PSICOLOGO (A)'
        'PUBLICIT'#193'RIO'
        'QUIMICA'
        'RADIALISTA'
        'RECEPCIONISTA'
        'RECUPERADOR DE CR'#201'DITO'
        'REFORMADO'
        'REPOSITOR'
        'REPRESENTANTE COMERCIAL'
        'RETIFICADOR'
        'REVIS'#195'O DE TECIDO'
        'REVISOR'
        'REVISORA'
        'RODOVI'#193'RIO'
        'SALGADEIRA'
        'SAPATEIRO'
        'SECRETARIA'
        'SECRETARIA DO LAR'
        'SECRETARIO'
        'SEGURAN'#199'A'
        'SEGURAN'#199'A PATRIMONIAL'
        'SERIGRAFISTA'
        'SERRALHEIRO'
        'SERVENTE'
        'SERVENTE DE PEDREIRO'
        'SERVENTE HOSPITALAR'
        'SERVIDOR FEDERAL'
        'SERVIDOR P'#218'BLICO'
        'SOCI'#211'LOGA'
        'SOCORRISTA'
        'SOLDADO'
        'SOLDADO REFORMADO'
        'SOLDADOR'
        'SUB-GERENTE'
        'SUPERVISOR'
        'SUPERVISOR DE EL'#201'TRICA'
        'SUPERVISOR DE LOJA'
        'SUPERVISOR DE MANUTEN'#199#195'O'
        'SUPERVISOR DE PRODU'#199#195'O'
        'SUPERVISOR DE RECEP'#199#195'O'
        'SUPERVISOR DE VENDAS'
        'SUPERVISOR GERAL'
        'TABELI'#195'O P'#218'BLICO'
        'TAPE'#199'EIRO'
        'TAXISTA'
        'TEC DE ALIMENTOS'
        'TEC. DE CADASTRO'
        'TEC. DE CELULAR'
        'TEC. DE ELETRIFICA'#199#195'O'
        'T'#201'C. DE LABORAT'#211'RIO'
        'T'#201'C. DE MINERA'#199#195'O'
        'TEC. DE OPERA'#199#195'O'
        'T'#201'C. DE PALCO'
        'TEC. DE PANIFICA'#199#195'O'
        'T'#201'C. DE RADIOLOGIA'
        'T'#201'C. DE REFRIGERA'#199#195'O'
        'TEC. DE SEGURAN'#199'A'
        'TEC. DE TELECOMUNICA'#199#195'O'
        'T'#201'C. EM AGROPECUARIA'
        'T'#201'C. EM ELETR'#212'NICA'
        'T'#201'C. EM ENFERMAGEM'
        'T'#201'C. EM INSPEN'#199#195'O'
        'TEC. EM SAUDE'
        'TEC. EM SEGURAN'#199'A ELETRONICA'
        'T'#201'C. EM TELEFONIA'
        'TEC. MANUTEN'#199#195'O'
        'TEC. MONTAGEM INDUSTRIAL'
        'T'#201'C. '#211'TICO'
        'T'#201'C. QU'#205'MICO'
        'TEC. REFRIGERA'#199#195'O'
        'T'#201'CNICO'
        'T'#201'CNICO AGR'#205'COLA'
        'T'#201'CNICO DE CARCINICULTURA'
        'TECNICO DE CONTABILIDADE'
        'T'#201'CNICO DE ENFERMAGEM'
        'TECNICO DE ENGENHARIA'
        'T'#201'CNICO DE INFORM'#193'TICA'
        'TECNICO DE INSTALA'#199#195'O'
        'T'#201'CNICO DE MONTEGEM'
        'T'#201'CNICO DE PRODU'#199#195'O'
        'TECNICO EM EDIFICA'#199#213'ES'
        'TECNICO EM ILUMINA'#199#195'O'
        'T'#201'CNICO EM MEC'#194'NICA'
        'TECNICO EM MECANICO'
        'T'#201'CNICO EM PR'#211'TESE DENT'#193'RIA'
        'TELEFONISTA'
        'TOPOGRAFO'
        'TOSADOR'
        'TRAINNE DE MARKETING'
        'TREINADOR'
        'TROCADOR DE OLEO'
        'TURISM'#211'LOGO(A)'
        'VAQUEIRO'
        'VENDEDOR(A)'
        'VEREADOR'
        'VIDRACEIRO'
        'VIGILANTE'
        'ZELADOR')
    end
    object cboCID: TComboBox
      Left = 120
      Top = 352
      Width = 559
      Height = 21
      DropDownCount = 15
      TabOrder = 7
      Items.Strings = (
        '')
    end
    object cboUF: TComboBox
      Left = 576
      Top = 101
      Width = 57
      Height = 21
      DropDownCount = 15
      TabOrder = 8
      Items.Strings = (
        ''
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object cboMunicipio: TComboBox
      Left = 368
      Top = 101
      Width = 169
      Height = 21
      DropDownCount = 15
      TabOrder = 9
      Items.Strings = (
        'Acari'
        'Afonso Bezerra'
        #193'gua Nova'
        'Alexandria'
        'Almino Afonso'
        'Alto do Rodrigues'
        'Angicos'
        'Ant'#244'nio Martins'
        'Apodi'
        'Areia Branca'
        'Arez'
        'Assu'
        'Ba'#237'a Formosa'
        'Bara'#250'na'
        'Barcelona'
        'Bento Fernandes'
        'Boa Sa'#250'de'
        'Bod'#243
        'Bom Jesus'
        'Brejinho'
        'Cai'#231'ara do Norte'
        'Cai'#231'ara do Rio do Vento'
        'Caic'#243
        'Campo Grande'
        'Campo Redondo'
        'Canguaretama'
        'Cara'#250'bas'
        'Carna'#250'ba dos Dantas'
        'Carnaubais'
        'Cear'#225'-Mirim'
        'Cerro Cor'#225
        'Coronel Ezequiel'
        'Coronel Jo'#227'o Pessoa'
        'Cruzeta'
        'Currais Novos'
        'Doutor Severiano'
        'Encanto'
        'Equador'
        'Esp'#237'rito Santo'
        'Extremoz'
        'Felipe Guerra'
        'Fernando Pedroza'
        'Flor'#226'nia'
        'Francisco Dantas'
        'Frutuoso Gomes'
        'Galinhos'
        'Goianinha'
        'Governador Dix-Sept Rosado'
        'Grossos'
        'Guamar'#233
        'Ielmo Marinho'
        'Ipangua'#231'u'
        'Ipueira'
        'Itaj'#225
        'Ita'#250
        'Ja'#231'an'#227
        'Janda'#237'ra'
        'Jandu'#237's'
        'Japi'
        'Jardim de Angicos'
        'Jardim de Piranhas'
        'Jardim do Serid'#243
        'Jo'#227'o C'#226'mara'
        'Jo'#227'o Dias'
        'Jos'#233' da Penha'
        'Jucurutu'
        'Jundi'#225
        'Lagoa d'#39'Anta'
        'Lagoa de Pedras'
        'Lagoa de Velhos'
        'Lagoa Nova'
        'Lagoa Salgada'
        'Lajes'
        'Lajes Pintadas'
        'Lucr'#233'cia'
        'Lu'#237's Gomes'
        'Maca'#237'ba'
        'Macau'
        'Major Sales'
        'Marcelino Vieira'
        'Martins'
        'Maxaranguape'
        'Messias Targino'
        'Montanhas'
        'Monte Alegre'
        'Monte das Gameleiras'
        'Mossor'#243
        'Natal'
        'N'#237'sia Floresta'
        'Nova Cruz'
        'Olho-d'#39#193'gua do Borges'
        'Ouro Branco'
        'Paran'#225
        'Para'#250
        'Parazinho'
        'Parelhas'
        'Parnamirim'
        'Passa-e-Fica'
        'Passagem'
        'Patu'
        'Pau dos Ferros'
        'Pedra Grande'
        'Pedra Preta'
        'Pedro Avelino'
        'Pedro Velho'
        'Pend'#234'ncias'
        'Pil'#245'es'
        'Po'#231'o Branco'
        'Portalegre'
        'Porto do Mangue'
        'Pureza'
        'Rafael Fernandes'
        'Rafael Godeiro'
        'Riacho da Cruz'
        'Riacho de Santana'
        'Riachuelo'
        'Rio do Fogo'
        'Rodolfo Fernandes'
        'Ruy Barbosa'
        'Santa Cruz'
        'Santa Maria'
        'Santana do Matos'
        'Santana do Serid'#243
        'Santo Ant'#244'nio'
        'S'#227'o Bento do Norte'
        'S'#227'o Bento do Trairi'
        'S'#227'o Fernando'
        'S'#227'o Francisco do Oeste'
        'S'#227'o Gon'#231'alo do Amarante'
        'S'#227'o Jo'#227'o do Sabugi'
        'S'#227'o Jos'#233' de Mipibu'
        'S'#227'o Jos'#233' do Campestre'
        'S'#227'o Jos'#233' do Serid'#243
        'S'#227'o Miguel'
        'S'#227'o Miguel do Gostoso'
        'S'#227'o Paulo do Potengi'
        'S'#227'o Pedro'
        'S'#227'o Rafael'
        'S'#227'o Tom'#233
        'S'#227'o Vicente'
        'Senador El'#243'i de Souza'
        'Senador Georgino Avelino'
        'Serra Caiada'
        'Serra de S'#227'o Bento'
        'Serra do Mel'
        'Serra Negra do Norte'
        'Serrinha'
        'Serrinha dos Pintos'
        'Severiano Melo'
        'S'#237'tio Novo'
        'Taboleiro Grande'
        'Taipu'
        'Tangar'#225
        'Tenente Ananias'
        'Tenente Laurentino Cruz'
        'Tibau'
        'Tibau do Sul'
        'Timba'#250'ba dos Batistas'
        'Touros'
        'Triunfo Potiguar'
        'Umarizal'
        'Upanema'
        'V'#225'rzea'
        'Venha-Ver'
        'Vera Cruz'
        'Vi'#231'osa'
        'Vila Flor')
    end
    object cboBairro: TComboBox
      Left = 120
      Top = 101
      Width = 169
      Height = 21
      DropDownCount = 15
      TabOrder = 11
      Items.Strings = (
        'Alecrim'
        'Areia Preta'
        'Barro Vermelho'
        'Bom Pastor'
        'Candel'#225'ria'
        'Capim Macio'
        'Cidade Alta'
        'Cidade da Esperan'#231'a'
        'Cidade Nova'
        'Dix-Sept Rosado'
        'Felipe Camar'#227'o'
        'Guarapes'
        'Igap'#243#9'Norte'
        'Lagoa Azul'
        'Lagoa Nova'
        'Lagoa Seca'
        'M'#227'e Lu'#237'za'
        'Ne'#243'polis'
        'Nordeste'
        'Nossa Senhora da Apresenta'#231#227'o'
        'Nossa Senhora de Nazar'#233
        'Nova Descoberta'
        'Paju'#231'ara'
        'Petr'#243'polis'
        'Pitimbu'
        'Planalto'
        'Ponta Negra'
        'Potengi'
        'Praia do Meio'
        'Quintas'
        'Redinha'
        'Ribeira'
        'Rocas'
        'Salinas'
        'Santos Reis'
        'Tirol')
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 220
      Width = 663
      Height = 67
      Caption = 'Filia'#231#227'o'
      TabOrder = 12
      object Label16: TLabel
        Left = 16
        Top = 17
        Width = 14
        Height = 13
        Caption = 'Pai'
      end
      object Label17: TLabel
        Left = 16
        Top = 44
        Width = 20
        Height = 13
        Caption = 'M'#227'e'
      end
      object edtNomePai: TEdit
        Left = 104
        Top = 13
        Width = 545
        Height = 21
        TabOrder = 1
      end
      object edtNomeMae: TEdit
        Left = 104
        Top = 39
        Width = 545
        Height = 21
        TabOrder = 0
      end
    end
    object edtRG: TEdit
      Left = 368
      Top = 197
      Width = 169
      Height = 21
      TabOrder = 14
    end
    object edtEmail: TEdit
      Left = 368
      Top = 133
      Width = 311
      Height = 21
      TabOrder = 15
    end
    object dateDataEmissao: TDateTimePicker
      Left = 589
      Top = 6
      Width = 90
      Height = 21
      Date = 41719.562941030090000000
      Time = 41719.562941030090000000
      TabOrder = 16
      OnChange = dateNascimentoChange
    end
    object cboResponsavel: TComboBox
      Left = 120
      Top = 6
      Width = 257
      Height = 21
      DropDownCount = 15
      TabOrder = 17
    end
  end
  inherited Panel2: TPanel
    Width = 694
    ExplicitWidth = 694
    inherited btnInserir: TSpeedButton
      Left = 5
      Width = 75
      ExplicitLeft = 5
      ExplicitWidth = 75
    end
    inherited btnAlterar: TSpeedButton
      Left = 82
      Top = 1
      ExplicitLeft = 82
      ExplicitTop = 1
    end
    inherited btnCancelar: TSpeedButton
      Left = 174
      Width = 99
      ExplicitLeft = 174
      ExplicitWidth = 99
    end
    inherited btnExcluir: TSpeedButton
      Left = 275
      Width = 89
      ExplicitLeft = 275
      ExplicitWidth = 89
    end
    inherited btnConfirmar: TSpeedButton
      Left = 366
      Width = 102
      ExplicitLeft = 366
      ExplicitWidth = 102
    end
    inherited btnSair: TSpeedButton
      Left = 609
      Width = 77
      Height = 41
      ExplicitLeft = 609
      ExplicitWidth = 77
      ExplicitHeight = 41
    end
    object btnPesquisa: TButton
      Left = 470
      Top = 1
      Width = 68
      Height = 42
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnPesquisaClick
    end
    object Button1: TButton
      Left = 540
      Top = 1
      Width = 65
      Height = 42
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object dateNascimento: TDateTimePicker [2]
    Left = 120
    Top = 246
    Width = 90
    Height = 21
    Date = 41719.562941030090000000
    Time = 41719.562941030090000000
    TabOrder = 2
    OnChange = dateNascimentoChange
  end
end
