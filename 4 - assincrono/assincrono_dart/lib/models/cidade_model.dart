import 'dart:convert';

class CidadeModel {
  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String unidade;
  String ibge;
  String gia;

  CidadeModel({
    this.cep,
    this.logradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf,
    this.unidade,
    this.ibge,
    this.gia,
  });

  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf,
      'unidade': unidade,
      'ibge': ibge,
      'gia': gia,
    };
  }

  factory CidadeModel.fromMap(Map<String, dynamic> map) {
    return CidadeModel(
      cep: map['cep'],
      logradouro: map['logradouro'],
      complemento: map['complemento'],
      bairro: map['bairro'],
      localidade: map['localidade'],
      uf: map['uf'],
      unidade: map['unidade'],
      ibge: map['ibge'],
      gia: map['gia'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CidadeModel.fromJson(String source) => CidadeModel.fromMap(json.decode(source));
}
