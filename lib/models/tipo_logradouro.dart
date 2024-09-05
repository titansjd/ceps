class TipoLogradouro {
  String codigo;
  String descricao;
  String descricaoOriginal;
  int pkTipo;

  TipoLogradouro({
    required this.codigo,
    required this.descricao,
    required this.descricaoOriginal,
    this.pkTipo = 1,
  });

  static List<TipoLogradouro> logradouros = [
    TipoLogradouro(codigo: 'A', descricao: 'AREA', descricaoOriginal: 'ÁREA'),
    TipoLogradouro(
        codigo: 'AC', descricao: 'ACESSO', descricaoOriginal: 'ACESSO'),
    TipoLogradouro(
        codigo: 'ACA',
        descricao: 'ACAMPAMENTO',
        descricaoOriginal: 'ACAMPAMENTO'),
    TipoLogradouro(
        codigo: 'ACL',
        descricao: 'ACESSO LOCAL',
        descricaoOriginal: 'ACESSO LOCAL'),
    TipoLogradouro(codigo: 'AD', descricao: 'ADRO', descricaoOriginal: 'ADRO'),
    TipoLogradouro(
        codigo: 'AE',
        descricao: 'AREA ESPECIAL',
        descricaoOriginal: 'ÁREA ESPECIAL'),
    TipoLogradouro(
        codigo: 'AER', descricao: 'AEROPORTO', descricaoOriginal: 'AEROPORTO'),
    TipoLogradouro(
        codigo: 'AL',
        descricao: 'ALAMEDA',
        descricaoOriginal: 'ALAMEDA',
        pkTipo: 5),
    TipoLogradouro(
        codigo: 'AMD',
        descricao: 'AVENIDA MARGINAL DIREITA',
        descricaoOriginal: 'AVENIDA MARGINAL DIREITA'),
    TipoLogradouro(
        codigo: 'AME',
        descricao: 'AVENIDA MARGINAL ESQUERDA',
        descricaoOriginal: 'AVENIDA MARGINAL ESQUERDA'),
    TipoLogradouro(
        codigo: 'AN',
        descricao: 'ANEL VIARIO',
        descricaoOriginal: 'ANEL VIARIO'),
    TipoLogradouro(
        codigo: 'ANT',
        descricao: 'ANTIGA ESTRADA',
        descricaoOriginal: 'ANTIGA ESTRADA',
        pkTipo: 84),
    TipoLogradouro(
        codigo: 'ART', descricao: 'ARTERIA', descricaoOriginal: 'ARTÉRIA'),
    TipoLogradouro(codigo: 'AT', descricao: 'ALTO', descricaoOriginal: 'ALTO'),
    TipoLogradouro(
        codigo: 'ATL', descricao: 'ATALHO', descricaoOriginal: 'ATALHO'),
    TipoLogradouro(
        codigo: 'A V',
        descricao: 'AREA VERDE',
        descricaoOriginal: 'ÁREA VERDE'),
    TipoLogradouro(
        codigo: 'AV',
        descricao: 'AVENIDA',
        descricaoOriginal: 'AVENIDA',
        pkTipo: 2),
    TipoLogradouro(
        codigo: 'AVC',
        descricao: 'AVENIDA CONTORNO',
        descricaoOriginal: 'AVENIDA CONTORNO'),
    TipoLogradouro(
        codigo: 'AVM',
        descricao: 'AVENIDA MARGINAL',
        descricaoOriginal: 'AVENIDA MARGINAL'),
    TipoLogradouro(
        codigo: 'AVV',
        descricao: 'AVENIDA VELHA',
        descricaoOriginal: 'AVENIDA VELHA'),
    TipoLogradouro(
        codigo: 'BAL', descricao: 'BALNEARIO', descricaoOriginal: 'BALNEÁRIO'),
    TipoLogradouro(
        codigo: 'BC', descricao: 'BECO', descricaoOriginal: 'BECO', pkTipo: 6),
    TipoLogradouro(
        codigo: 'BCO', descricao: 'BURACO', descricaoOriginal: 'BURACO'),
    TipoLogradouro(
        codigo: 'BEL', descricao: 'BELVEDERE', descricaoOriginal: 'BELVEDERE'),
    TipoLogradouro(
        codigo: 'BL', descricao: 'BLOCO', descricaoOriginal: 'BLOCO'),
    TipoLogradouro(
        codigo: 'BLO', descricao: 'BALAO', descricaoOriginal: 'BALÃO'),
    TipoLogradouro(
        codigo: 'BLS', descricao: 'BLOCOS', descricaoOriginal: 'BLOCOS'),
    TipoLogradouro(
        codigo: 'BLV', descricao: 'BULEVAR', descricaoOriginal: 'BULEVAR'),
    TipoLogradouro(
        codigo: 'BSQ', descricao: 'BOSQUE', descricaoOriginal: 'BOSQUE'),
    TipoLogradouro(
        codigo: 'BVD', descricao: 'BOULEVARD', descricaoOriginal: 'BOULEVARD'),
    TipoLogradouro(
        codigo: 'BX', descricao: 'BAIXA', descricaoOriginal: 'BAIXA'),
    TipoLogradouro(codigo: 'C', descricao: 'CAIS', descricaoOriginal: 'CAIS'),
    TipoLogradouro(
        codigo: 'CAL', descricao: 'CALCADA', descricaoOriginal: 'CALÇADA'),
    TipoLogradouro(
        codigo: 'CAM',
        descricao: 'CAMINHO',
        descricaoOriginal: 'CAMINHO',
        pkTipo: 79),
    TipoLogradouro(
        codigo: 'CAN', descricao: 'CANAL', descricaoOriginal: 'CANAL'),
    TipoLogradouro(
        codigo: 'CH', descricao: 'CHACARA', descricaoOriginal: 'CHÁCARA'),
    TipoLogradouro(
        codigo: 'CHA', descricao: 'CHAPADAO', descricaoOriginal: 'CHAPADÃO'),
    TipoLogradouro(
        codigo: 'CIC', descricao: 'CICLOVIA', descricaoOriginal: 'CICLOVIA'),
    TipoLogradouro(
        codigo: 'CIR', descricao: 'CIRCULAR', descricaoOriginal: 'CIRCULAR'),
    TipoLogradouro(
        codigo: 'CJ', descricao: 'CONJUNTO', descricaoOriginal: 'CONJUNTO'),
    TipoLogradouro(
        codigo: 'CJM',
        descricao: 'CONJUNTO MUTIRAO',
        descricaoOriginal: 'CONJUNTO MUTIRÃO'),
    TipoLogradouro(
        codigo: 'CMP',
        descricao: 'COMPLEXO VIARIO',
        descricaoOriginal: 'COMPLEXO VIÁRIO'),
    TipoLogradouro(
        codigo: 'COL', descricao: 'COLONIA', descricaoOriginal: 'COLÔNIA'),
    TipoLogradouro(
        codigo: 'COM',
        descricao: 'COMUNIDADE',
        descricaoOriginal: 'COMUNIDADE'),
    TipoLogradouro(
        codigo: 'CON',
        descricao: 'CONDOMINIO',
        descricaoOriginal: 'CONDOMÍNIO'),
    TipoLogradouro(
        codigo: 'COR', descricao: 'CORREDOR', descricaoOriginal: 'CORREDOR'),
    TipoLogradouro(
        codigo: 'CPO', descricao: 'CAMPO', descricaoOriginal: 'CAMPO'),
    TipoLogradouro(
        codigo: 'CRG', descricao: 'CORREGO', descricaoOriginal: 'CÓRREGO'),
    TipoLogradouro(
        codigo: 'CTN', descricao: 'CONTORNO', descricaoOriginal: 'CONTORNO'),
    TipoLogradouro(
        codigo: 'DSC', descricao: 'DESCIDA', descricaoOriginal: 'DESCIDA'),
    TipoLogradouro(
        codigo: 'DSV', descricao: 'DESVIO', descricaoOriginal: 'DESVIO'),
    TipoLogradouro(
        codigo: 'DT', descricao: 'DISTRITO', descricaoOriginal: 'DISTRITO'),
    TipoLogradouro(
        codigo: 'EB',
        descricao: 'ENTRE BLOCO',
        descricaoOriginal: 'ENTRE BLOCO'),
    TipoLogradouro(
        codigo: 'EIM',
        descricao: 'ESTRADA INTERMUNICIPAL',
        descricaoOriginal: 'ESTRADA INTERMUNICIPAL',
        pkTipo: 229),
    TipoLogradouro(
        codigo: 'ENS', descricao: 'ENSEADA', descricaoOriginal: 'ENSEADA'),
    TipoLogradouro(
        codigo: 'ENT',
        descricao: 'ENTRADA PARTICULAR',
        descricaoOriginal: 'ENTRADA PARTICULAR'),
    TipoLogradouro(
        codigo: 'EQ',
        descricao: 'ENTRE QUADRA',
        descricaoOriginal: 'ENTRE QUADRA'),
    TipoLogradouro(
        codigo: 'ESC', descricao: 'ESCADA', descricaoOriginal: 'ESCADA'),
    TipoLogradouro(
        codigo: 'ESD', descricao: 'ESCADARIA', descricaoOriginal: 'ESCADARIA'),
    TipoLogradouro(
        codigo: 'ESE',
        descricao: 'ESTRADA ESTADUAL',
        descricaoOriginal: 'ESTRADA ESTADUAL',
        pkTipo: 223),
    TipoLogradouro(
        codigo: 'ESI',
        descricao: 'ESTRADA VICINAL',
        descricaoOriginal: 'ESTRADA VICINAL',
        pkTipo: 227),
    TipoLogradouro(
        codigo: 'ESL',
        descricao: 'ESTRADA DE LIGACAO',
        descricaoOriginal: 'ESTRADA DE LIGAÇÃO'),
    TipoLogradouro(
        codigo: 'ESM',
        descricao: 'ESTRADA MUNICIPAL',
        descricaoOriginal: 'ESTRADA MUNICIPAL',
        pkTipo: 149),
    TipoLogradouro(
        codigo: 'ESP', descricao: 'ESPLANADA', descricaoOriginal: 'ESPLANADA'),
    TipoLogradouro(
        codigo: 'ESS',
        descricao: 'ESTRADA DE SERVIDAO',
        descricaoOriginal: 'ESTRADA DE SERVIDÃO'),
    TipoLogradouro(
        codigo: 'EST',
        descricao: 'ESTRADA',
        descricaoOriginal: 'ESTRADA',
        pkTipo: 7),
    TipoLogradouro(
        codigo: 'ESV',
        descricao: 'ESTRADA VELHA',
        descricaoOriginal: 'ESTRADA VELHA'),
    TipoLogradouro(
        codigo: 'ETA',
        descricao: 'ESTRADA ANTIGA',
        descricaoOriginal: 'ESTRADA ANTIGA'),
    TipoLogradouro(
        codigo: 'ETC', descricao: 'ESTACAO', descricaoOriginal: 'ESTAÇÃO'),
    TipoLogradouro(
        codigo: 'ETD', descricao: 'ESTADIO', descricaoOriginal: 'ESTÁDIO'),
    TipoLogradouro(
        codigo: 'ETN', descricao: 'ESTANCIA', descricaoOriginal: 'ESTÂNCIA'),
    TipoLogradouro(
        codigo: 'ETP',
        descricao: 'ESTRADA PARTICULAR',
        descricaoOriginal: 'ESTRADA PARTICULAR'),
    TipoLogradouro(
        codigo: 'ETT',
        descricao: 'ESTACIONAMENTO',
        descricaoOriginal: 'ESTACIONAMENTO'),
    TipoLogradouro(
        codigo: 'EVA',
        descricao: 'EVANGELICA',
        descricaoOriginal: 'EVANGÉLICA'),
    TipoLogradouro(
        codigo: 'EVD', descricao: 'ELEVADA', descricaoOriginal: 'ELEVADA'),
    TipoLogradouro(
        codigo: 'EX',
        descricao: 'EIXO INDUSTRIAL',
        descricaoOriginal: 'EIXO INDUSTRIAL'),
    TipoLogradouro(
        codigo: 'FAV', descricao: 'FAVELA', descricaoOriginal: 'FAVELA'),
    TipoLogradouro(
        codigo: 'FAZ', descricao: 'FAZENDA', descricaoOriginal: 'FAZENDA'),
    TipoLogradouro(
        codigo: 'FER', descricao: 'FERROVIA', descricaoOriginal: 'FERROVIA'),
    TipoLogradouro(
        codigo: 'FNT', descricao: 'FONTE', descricaoOriginal: 'FONTE'),
    TipoLogradouro(
        codigo: 'FRA', descricao: 'FEIRA', descricaoOriginal: 'FEIRA'),
    TipoLogradouro(
        codigo: 'FTE', descricao: 'FORTE', descricaoOriginal: 'FORTE'),
    TipoLogradouro(
        codigo: 'GAL', descricao: 'GALERIA', descricaoOriginal: 'GALERIA'),
    TipoLogradouro(
        codigo: 'GJA', descricao: 'GRANJA', descricaoOriginal: 'GRANJA'),
    TipoLogradouro(
        codigo: 'HAB',
        descricao: 'NUCLEO HABITACIONAL',
        descricaoOriginal: 'NÚCLEO HABITACIONAL'),
    TipoLogradouro(codigo: 'IA', descricao: 'ILHA', descricaoOriginal: 'ILHA'),
    TipoLogradouro(
        codigo: 'IND',
        descricao: 'INDETERMINADO',
        descricaoOriginal: 'INDETERMINADO'),
    TipoLogradouro(
        codigo: 'IOA', descricao: 'ILHOTA', descricaoOriginal: 'ILHOTA'),
    TipoLogradouro(
        codigo: 'JD', descricao: 'JARDIM', descricaoOriginal: 'JARDIM'),
    TipoLogradouro(
        codigo: 'JDE', descricao: 'JARDINETE', descricaoOriginal: 'JARDINETE'),
    TipoLogradouro(
        codigo: 'LD', descricao: 'LADEIRA', descricaoOriginal: 'LADEIRA'),
    TipoLogradouro(
        codigo: 'LGA', descricao: 'LAGOA', descricaoOriginal: 'LAGOA'),
    TipoLogradouro(codigo: 'LGO', descricao: 'LAGO', descricaoOriginal: 'LAGO'),
    TipoLogradouro(
        codigo: 'LOT',
        descricao: 'LOTEAMENTO',
        descricaoOriginal: 'LOTEAMENTO'),
    TipoLogradouro(
        codigo: 'LRG', descricao: 'LARGO', descricaoOriginal: 'LARGO'),
    TipoLogradouro(codigo: 'LT', descricao: 'LOTE', descricaoOriginal: 'LOTE'),
    TipoLogradouro(
        codigo: 'MER', descricao: 'MERCADO', descricaoOriginal: 'MERCADO'),
    TipoLogradouro(
        codigo: 'MNA', descricao: 'MARINA', descricaoOriginal: 'MARINA'),
    TipoLogradouro(
        codigo: 'MOD', descricao: 'MODULO', descricaoOriginal: 'MODULO'),
    TipoLogradouro(
        codigo: 'MRG', descricao: 'PROJECAO', descricaoOriginal: 'PROJEÇÃO'),
    TipoLogradouro(
        codigo: 'MRO', descricao: 'MORRO', descricaoOriginal: 'MORRO'),
    TipoLogradouro(
        codigo: 'MTE', descricao: 'MONTE', descricaoOriginal: 'MONTE'),
    TipoLogradouro(
        codigo: 'NUC', descricao: 'NUCLEO', descricaoOriginal: 'NÚCLEO'),
    TipoLogradouro(
        codigo: 'NUR',
        descricao: 'NUCLEO RURAL',
        descricaoOriginal: 'NÚCLEO RURAL'),
    TipoLogradouro(
        codigo: 'OUT', descricao: 'OUTEIRO', descricaoOriginal: 'OUTEIRO'),
    TipoLogradouro(
        codigo: 'PAR', descricao: 'PARALELA', descricaoOriginal: 'PARALELA'),
    TipoLogradouro(
        codigo: 'PAS', descricao: 'PASSEIO', descricaoOriginal: 'PASSEIO'),
    TipoLogradouro(
        codigo: 'PAT', descricao: 'PATIO', descricaoOriginal: 'PÁTIO'),
    TipoLogradouro(
        codigo: 'PC',
        descricao: 'PRACA',
        descricaoOriginal: 'PRAÇA',
        pkTipo: 4),
    TipoLogradouro(
        codigo: 'PCE',
        descricao: 'PRACA DE ESPORTES',
        descricaoOriginal: 'PRAÇA DE ESPORTES'),
    TipoLogradouro(
        codigo: 'PDA', descricao: 'PARADA', descricaoOriginal: 'PARADA'),
    TipoLogradouro(
        codigo: 'PDO', descricao: 'PARADOURO', descricaoOriginal: 'PARADOURO'),
    TipoLogradouro(
        codigo: 'PNT', descricao: 'PONTA', descricaoOriginal: 'PONTA'),
    TipoLogradouro(
        codigo: 'PR', descricao: 'PRAIA', descricaoOriginal: 'PRAIA'),
    TipoLogradouro(
        codigo: 'PRL',
        descricao: 'PROLONGAMENTO',
        descricaoOriginal: 'PROLONGAMENTO'),
    TipoLogradouro(
        codigo: 'PRM',
        descricao: 'PARQUE MUNICIPAL',
        descricaoOriginal: 'PARQUE MUNICIPAL'),
    TipoLogradouro(
        codigo: 'PRQ', descricao: 'PARQUE', descricaoOriginal: 'PARQUE'),
    TipoLogradouro(
        codigo: 'PRR',
        descricao: 'PARQUE RESIDENCIAL',
        descricaoOriginal: 'PARQUE RESIDENCIAL'),
    TipoLogradouro(
        codigo: 'PSA', descricao: 'PASSARELA', descricaoOriginal: 'PASSARELA'),
    TipoLogradouro(
        codigo: 'PSG', descricao: 'PASSAGEM', descricaoOriginal: 'PASSAGEM'),
    TipoLogradouro(
        codigo: 'PSP',
        descricao: 'PASSAGEM DE PEDESTRE',
        descricaoOriginal: 'PASSAGEM DE PEDESTRE'),
    TipoLogradouro(
        codigo: 'PSS',
        descricao: 'PASSAGEM SUBTERRANEA',
        descricaoOriginal: 'PASSAGEM SUBTERRANEA'),
    TipoLogradouro(
        codigo: 'PTE', descricao: 'PONTE', descricaoOriginal: 'PONTE'),
    TipoLogradouro(
        codigo: 'PTO', descricao: 'PORTO', descricaoOriginal: 'PORTO'),
    TipoLogradouro(
        codigo: 'Q',
        descricao: 'QUADRA',
        descricaoOriginal: 'QUADRA',
        pkTipo: 20),
    TipoLogradouro(
        codigo: 'QTA', descricao: 'QUINTA', descricaoOriginal: 'QUINTA'),
    TipoLogradouro(
        codigo: 'QTS', descricao: 'QUINTAS', descricaoOriginal: 'QUINTAS'),
    TipoLogradouro(
        codigo: 'R', descricao: 'RUA', descricaoOriginal: 'RUA', pkTipo: 1),
    TipoLogradouro(
        codigo: 'R I',
        descricao: 'RUA INTEGRACAO',
        descricaoOriginal: 'RUA INTEGRAÇÃO'),
    TipoLogradouro(
        codigo: 'R L',
        descricao: 'RUA DE LIGACAO',
        descricaoOriginal: 'RUA DE LIGAÇÃO'),
    TipoLogradouro(
        codigo: 'R P',
        descricao: 'RUA PARTICULAR',
        descricaoOriginal: 'RUA PARTICULAR'),
    TipoLogradouro(
        codigo: 'R V', descricao: 'RUA VELHA', descricaoOriginal: 'RUA VELHA'),
    TipoLogradouro(
        codigo: 'RAM', descricao: 'RAMAL', descricaoOriginal: 'RAMAL'),
    TipoLogradouro(
        codigo: 'RCR', descricao: 'RECREIO', descricaoOriginal: 'RECREIO'),
    TipoLogradouro(
        codigo: 'REC', descricao: 'RECANTO', descricaoOriginal: 'RECANTO'),
    TipoLogradouro(
        codigo: 'RER', descricao: 'RETIRO', descricaoOriginal: 'RETIRO'),
    TipoLogradouro(
        codigo: 'RES',
        descricao: 'RESIDENCIAL',
        descricaoOriginal: 'RESIDENCIAL'),
    TipoLogradouro(codigo: 'RET', descricao: 'RETA', descricaoOriginal: 'RETA'),
    TipoLogradouro(
        codigo: 'RLA', descricao: 'RUELA', descricaoOriginal: 'RUELA'),
    TipoLogradouro(
        codigo: 'RMP', descricao: 'RAMPA', descricaoOriginal: 'RAMPA'),
    TipoLogradouro(
        codigo: 'ROA', descricao: 'RODO ANEL', descricaoOriginal: 'RODO ANEL'),
    TipoLogradouro(
        codigo: 'ROD',
        descricao: 'RODOVIA',
        descricaoOriginal: 'RODOVIA',
        pkTipo: 8),
    TipoLogradouro(
        codigo: 'ROT', descricao: 'ROTULA', descricaoOriginal: 'ROTULA'),
    TipoLogradouro(
        codigo: 'RPE',
        descricao: 'RUA DE PEDESTRE',
        descricaoOriginal: 'RUA DE PEDESTRE'),
    TipoLogradouro(
        codigo: 'RPR', descricao: 'MARGEM', descricaoOriginal: 'MARGEM'),
    TipoLogradouro(
        codigo: 'RTN', descricao: 'RETORNO', descricaoOriginal: 'RETORNO'),
    TipoLogradouro(
        codigo: 'RTT', descricao: 'ROTATORIA', descricaoOriginal: 'ROTATÓRIA'),
    TipoLogradouro(
        codigo: 'SEG',
        descricao: 'SEGUNDA AVENIDA',
        descricaoOriginal: 'SEGUNDA AVENIDA'),
    TipoLogradouro(
        codigo: 'SIT', descricao: 'SITIO', descricaoOriginal: 'SÍTIO'),
    TipoLogradouro(
        codigo: 'SRV', descricao: 'SERVIDAO', descricaoOriginal: 'SERVIDÃO'),
    TipoLogradouro(
        codigo: 'ST', descricao: 'SETOR', descricaoOriginal: 'SETOR'),
    TipoLogradouro(
        codigo: 'SUB', descricao: 'SUBIDA', descricaoOriginal: 'SUBIDA'),
    TipoLogradouro(
        codigo: 'TCH',
        descricao: 'TRINCHEIRA',
        descricaoOriginal: 'TRINCHEIRA'),
    TipoLogradouro(
        codigo: 'TER', descricao: 'TERMINAL', descricaoOriginal: 'TERMINAL'),
    TipoLogradouro(
        codigo: 'TR', descricao: 'TRECHO', descricaoOriginal: 'TRECHO'),
    TipoLogradouro(
        codigo: 'TRV', descricao: 'TREVO', descricaoOriginal: 'TREVO'),
    TipoLogradouro(
        codigo: 'TUN', descricao: 'TUNEL', descricaoOriginal: 'TÚNEL'),
    TipoLogradouro(
        codigo: 'TV',
        descricao: 'TRAVESSA',
        descricaoOriginal: 'TRAVESSA',
        pkTipo: 3),
    TipoLogradouro(
        codigo: 'TVP',
        descricao: 'TRAVESSA PARTICULAR',
        descricaoOriginal: 'TRAVESSA PARTICULAR'),
    TipoLogradouro(
        codigo: 'TVV',
        descricao: 'TRAVESSA VELHA',
        descricaoOriginal: 'TRAVESSA VELHA'),
    TipoLogradouro(
        codigo: 'UNI', descricao: 'UNIDADE', descricaoOriginal: 'UNIDADE'),
    TipoLogradouro(codigo: 'V', descricao: 'VIA', descricaoOriginal: 'VIA'),
    TipoLogradouro(
        codigo: 'V C',
        descricao: 'VIA COLETORA',
        descricaoOriginal: 'VIA COLETORA'),
    TipoLogradouro(
        codigo: 'V L', descricao: 'VIA LOCAL', descricaoOriginal: 'VIA LOCAL'),
    TipoLogradouro(
        codigo: 'VAC',
        descricao: 'VIA DE ACESSO',
        descricaoOriginal: 'VIA DE ACESSO'),
    TipoLogradouro(codigo: 'VAL', descricao: 'VALA', descricaoOriginal: 'VALA'),
    TipoLogradouro(
        codigo: 'VCO',
        descricao: 'VIA COSTEIRA',
        descricaoOriginal: 'VIA COSTEIRA'),
    TipoLogradouro(
        codigo: 'VD', descricao: 'VIADUTO', descricaoOriginal: 'VIADUTO'),
    TipoLogradouro(
        codigo: 'V-E',
        descricao: 'VIA EXPRESSA',
        descricaoOriginal: 'VIA EXPRESSA'),
    TipoLogradouro(
        codigo: 'VER', descricao: 'VEREDA', descricaoOriginal: 'VEREDA'),
    TipoLogradouro(
        codigo: 'VEV',
        descricao: 'VIA ELEVADO',
        descricaoOriginal: 'VIA ELEVADO'),
    TipoLogradouro(codigo: 'VL', descricao: 'VILA', descricaoOriginal: 'VILA'),
    TipoLogradouro(
        codigo: 'VLA', descricao: 'VIELA', descricaoOriginal: 'VIELA'),
    TipoLogradouro(codigo: 'VLE', descricao: 'VALE', descricaoOriginal: 'VALE'),
    TipoLogradouro(
        codigo: 'VLT',
        descricao: 'VIA LITORANEA',
        descricaoOriginal: 'VIA LITORÂNEA'),
    TipoLogradouro(
        codigo: 'VPE',
        descricao: 'VIA DE PEDESTRE',
        descricaoOriginal: 'VIA DE PEDESTRE'),
    TipoLogradouro(
        codigo: 'VRT', descricao: 'VARIANTE', descricaoOriginal: 'VARIANTE'),
    TipoLogradouro(
        codigo: 'ZIG',
        descricao: 'ZIGUE-ZAGUE',
        descricaoOriginal: 'ZIGUE-ZAGUE'),
  ];

  @override
  String toString() => 'TipoLogradouro(codigo: $codigo, descricao: $descricao)';

  static TipoLogradouro getByLogradouro(String value) {
    var temp = value.toUpperCase().substring(0, value.indexOf(' '));

    var tipoLogradouro = logradouros.firstWhere(
        (element) => element.descricaoOriginal == temp,
        orElse: () =>
            TipoLogradouro(codigo: '', descricao: '', descricaoOriginal: ''));

    return tipoLogradouro;
  }
}
