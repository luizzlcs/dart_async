import 'dart:convert';
import 'package:http/http.dart' as http;

import 'cidade.dart';

Future<void> main() async {
  await buscarCep();
}

// Pegando dados
Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/59114035/json/';
  var response = await http.get(Uri.parse(url));

  /* if (response.statusCode == 200) {
    var responseData = jsonDecode(response.body);
    print('-------- ENDEREÇO ----------');
    print(responseData['cep']);
    print(responseData['logradouro']);
    print(responseData['localidade']);
    print(responseData['uf']);
  } */

  var cidade = Cidade.fromJson(response.body);
  print(cidade.cep);
  print(cidade.logradouro);
  print(cidade.localidade);
  print(cidade.uf);
  
  //Convertendo
  print(cidade.toMap());
  print(cidade.toJson());
}
