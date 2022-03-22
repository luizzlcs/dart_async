import 'dart:convert';

class CidadeMaisFacil {
  

  final String cep;
  final String logradouro;
  final String complemento;
  final String localidade;
  final String uf;
  final String ddd;

  CidadeMaisFacil({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'cep': cep});
    result.addAll({'logradouro': logradouro});
    result.addAll({'complemento': complemento});
    result.addAll({'localidade': localidade});
    result.addAll({'uf': uf});
    result.addAll({'ddd': ddd});
  
    return result;
  }

  factory CidadeMaisFacil.fromMap(Map<String, dynamic> map) {
    return CidadeMaisFacil(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CidadeMaisFacil.fromJson(String source) => CidadeMaisFacil.fromMap(json.decode(source));
}

