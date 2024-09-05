import 'dart:convert';

import 'tipo_logradouro.dart';

class CepModel {
  String? cep;
  String? logradouro;
  String? complemento;
  String? unidade;
  String? bairro;
  String? localidade;
  String? uf;
  String? estado;
  String? regiao;
  String? ibge;
  String? gia;
  String? ddd;
  String? siafi;
  TipoLogradouro? tipoLogradouro;
  CepModel({
    this.cep,
    this.logradouro,
    this.complemento,
    this.unidade,
    this.bairro,
    this.localidade,
    this.uf,
    this.estado,
    this.regiao,
    this.ibge,
    this.gia,
    this.ddd,
    this.siafi,
    this.tipoLogradouro,
  });

  CepModel copyWith({
    String? cep,
    String? logradouro,
    String? complemento,
    String? unidade,
    String? bairro,
    String? localidade,
    String? uf,
    String? estado,
    String? regiao,
    String? ibge,
    String? gia,
    String? ddd,
    String? siafi,
    TipoLogradouro? tipoLogradouro,
  }) {
    return CepModel(
      cep: cep ?? this.cep,
      logradouro: logradouro ?? this.logradouro,
      complemento: complemento ?? this.complemento,
      unidade: unidade ?? this.unidade,
      bairro: bairro ?? this.bairro,
      localidade: localidade ?? this.localidade,
      uf: uf ?? this.uf,
      estado: estado ?? this.estado,
      regiao: regiao ?? this.regiao,
      ibge: ibge ?? this.ibge,
      gia: gia ?? this.gia,
      ddd: ddd ?? this.ddd,
      siafi: siafi ?? this.siafi,
      tipoLogradouro: tipoLogradouro ?? this.tipoLogradouro,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'unidade': unidade,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'estado': estado,
      'regiao': regiao,
      'ibge': ibge,
      'gia': gia,
      'ddd': ddd,
      'siafi': siafi,
    };
  }

  factory CepModel.fromMap(Map<String, dynamic> map) {
    return CepModel(
      cep: map['cep'] != null ? map['cep'] as String : null,
      logradouro:
          map['logradouro'] != null ? map['logradouro'] as String : null,
      complemento:
          map['complemento'] != null ? map['complemento'] as String : null,
      unidade: map['unidade'] != null ? map['unidade'] as String : null,
      bairro: map['bairro'] != null ? map['bairro'] as String : null,
      localidade:
          map['localidade'] != null ? map['localidade'] as String : null,
      uf: map['uf'] != null ? map['uf'] as String : null,
      estado: map['estado'] != null ? map['estado'] as String : null,
      regiao: map['regiao'] != null ? map['regiao'] as String : null,
      ibge: map['ibge'] != null ? map['ibge'] as String : null,
      gia: map['gia'] != null ? map['gia'] as String : null,
      ddd: map['ddd'] != null ? map['ddd'] as String : null,
      siafi: map['siafi'] != null ? map['siafi'] as String : null,
      tipoLogradouro: map['logradouro'] != null
          ? TipoLogradouro.getByLogradouro(map['logradouro'])
          : TipoLogradouro(codigo: '', descricao: '', descricaoOriginal: ''),
    );
  }

  String toJson() => json.encode(toMap());

  factory CepModel.fromJson(String source) =>
      CepModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CepModel(cep: $cep, logradouro: $logradouro, complemento: $complemento, unidade: $unidade, bairro: $bairro, localidade: $localidade, uf: $uf, estado: $estado, regiao: $regiao, ibge: $ibge, gia: $gia, ddd: $ddd, siafi: $siafi, tipoLogradouro: $tipoLogradouro)';
  }

  @override
  bool operator ==(covariant CepModel other) {
    if (identical(this, other)) return true;

    return other.cep == cep &&
        other.logradouro == logradouro &&
        other.complemento == complemento &&
        other.unidade == unidade &&
        other.bairro == bairro &&
        other.localidade == localidade &&
        other.uf == uf &&
        other.estado == estado &&
        other.regiao == regiao &&
        other.ibge == ibge &&
        other.gia == gia &&
        other.ddd == ddd &&
        other.siafi == siafi &&
        other.tipoLogradouro == tipoLogradouro;
  }

  @override
  int get hashCode {
    return cep.hashCode ^
        logradouro.hashCode ^
        complemento.hashCode ^
        unidade.hashCode ^
        bairro.hashCode ^
        localidade.hashCode ^
        uf.hashCode ^
        estado.hashCode ^
        regiao.hashCode ^
        ibge.hashCode ^
        gia.hashCode ^
        ddd.hashCode ^
        siafi.hashCode ^
        tipoLogradouro.hashCode;
  }

  String enderecoRed() {
    var end = logradouro!.substring(logradouro!.indexOf(' '));

    return end.trimLeft();
  }

  String endereco() {
    return '${tipoLogradouro!.codigo} ${enderecoRed()}';
  }

  static String toScriptCommitOracle(List<CepModel> listCeps) {
    String result = '';

    for (CepModel obj in listCeps) {
      try {
        result +=
            "SP_ATU_CEP_AVULSO('${obj.cep!.replaceAll('-', '')}','1','${obj.uf}','${obj.localidade}','${obj.bairro}','${obj.bairro}','${obj.tipoLogradouro!.descricao}','${obj.enderecoRed()}','${obj.endereco()}','${obj.complemento}');\n"
                .toUpperCase();
      } catch (e) {
        result += '${obj.cep} \n';
      }
    }

    return result;
  }

  static String toScriptRollbackOracle(List<CepModel> listCeps) {
    String result = '';

    for (CepModel obj in listCeps) {
      try {
        result +=
            "EXECUTE rollback_cep('${obj.cep!.replaceAll('-', '')}','1',${obj.tipoLogradouro!.pkTipo},'${obj.enderecoRed()}','${obj.endereco()}');\n"
                .toUpperCase();
      } catch (e) {
        result += '${obj.cep} \n';
      }
    }

    return result;
  }
}
