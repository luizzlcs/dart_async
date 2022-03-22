import 'dart:convert';

class Cidade {
  final String cep;
  final String logradouro;
  final String complemento;
  final String localidade;
  final String uf;
  final String ddd;


  Cidade({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.localidade,
    required this.uf,
    required this.ddd,
  });

  // O fromMap recebe um mapa e transforma
  // em uma Cidade no nosso modelo
  factory Cidade.fromMap(Map<String, dynamic> map) {
    return Cidade(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'] ?? '',
      complemento: map['complemento'] ?? '',
      localidade: map['localidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd'] ?? '',
    );
  }

  // O fromJson recebe um souce que é um json como
  // String e transforma em uma cidade, fazendo o
  // jsonDecode decodificar para um mapa de chave
  // e valor e chamando o método de cima que
  // chama um método de chave e valor
  // e transforma em um objeto
  factory Cidade.fromJson(String souce) {
    var jsonMap = jsonDecode(souce);
    return Cidade.fromMap(jsonMap);
  }

  // O toMap pega a instância e transforma
  // em um mapa de chave e valor
  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      localidade: localidade,
      'uf': uf,
      'ddd': ddd,
    };
  }

  // O toJson pega a instância transforma em
  // um mapa e decodifica ela para um json.
  String toJson() => jsonEncode(toMap());

  
  @override
  String toString() {
    return 'Cidade(cep: $cep, logradouro: $logradouro, complemento: $complemento, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}

/* {
      "cep": "01001-000",
      "logradouro": "Praça da Sé",
      "complemento": "lado ímpar",
      "bairro": "Sé",
      "localidade": "São Paulo",
      "uf": "SP",
      "ibge": "3550308",
      "gia": "1004",
      "ddd": "11",
      "siafi": "7107"
    } */