import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

Future<void> main() async {
  // await buscarCep();
  // await buscarCepPost();
  //await buscarError();
  //await buscarCepPost();
  //await salvarPost();
  await AtualizarPost();
}

// Pegando dados
Future<void> buscarCep() async {
  var url = 'https://viacep.com.br/ws/59114035/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    print('-------- ENDEREÇO ----------');
    print(responseData['cep']);
    print(responseData['logradouro']);
    print(responseData['localidade']);
    print(responseData['uf']);
  }
}

// Enviando dados
Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var mapaRequest = {
    'title': 'Post novo',
    'body': 'Descrição do post',
    'userId': 1
  };

  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));

  print(response.statusCode);
  print(response.body);
}

// Atualizando dados enviados
Future<void> AtualizarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/1';
  var mapaRequest = {
    'id': 101,
    'title': 'Post alterado',
    'body': 'Descrição do post',
    'userId': 1
  };

  var response = await http
      .put(Uri.parse(url), body: convert.jsonEncode(mapaRequest), headers: {
    'Content-type': 'application/json; charset=UTF-8',
  });

  print(response.statusCode);
  print(response.body);
}

// Pegando dados com erro e tratando
Future<void> buscarError() async {
  var url = 'https://viacep.com.br/ws/999999999/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    print('-------- ENDEREÇO ----------');
    print(responseData['cep']);
    print(responseData['logradouro']);
    print(responseData['localidade']);
    print(responseData['uf']);
  } else {
    print('Tem um error aí!!!!');
    print('StatusCode: ${response.statusCode}');
    print('Body: ${response.body}');
    print('ReasonPhrase: ${response.reasonPhrase}');
  }
}

Future<void> buscarCepPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response == 200) {
    var responseData = convert.jsonDecode(response.body);
    if (responseData is List) {
      responseData.forEach((element) => print(element['4']));
    }
  }
}
