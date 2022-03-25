// O ESTREAM É UM FLUXO CONTÍNUO DE DADOS

// - Stream: é um canal de fluxo sendo chamado de fluxo de dados;
// - StreamController: é o que controla o fluxo de dados;
// - StreamTransformer: é o que processa os dados de entrada (modifica);
// - sink : é a propriedade que recebe uma entrada;
// - stream: é a propriedade que fornece a saída do Stream.
Future<void> main() async {
  print('Inicio...');
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);

  // toList -  pegados todos os dados
  // para a Strema de uma só vez;

  stream = stream.take(5);

  final data = await stream.toList();
  print(data);
  print('FIM!');
  
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}


// https://www.macoratti.net/19/12/flut_stream1.htm
// https://dart.dev/tutorials/language/streams
