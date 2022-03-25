import 'dart:async';

Future<void> main() async {
  print('Incio Stream Controller');
  final stremControle = StreamController<int>.broadcast();
  final inStream = stremControle.sink;
  final outStream = stremControle.stream;

  outStream
      .skip(1)
      .where((numero) => numero %2 == 0)
      .map((numero) => 'O valor par enviado é $numero')
      .listen((strConvertida) {
    print('Strem recebida');
    print(strConvertida);
  });

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    print('Enviando número $numero');
    inStream.add(numero);
    //await Future.delayed(Duration(milliseconds: 500));
  }

  print('Fim Stream Controller');
  await stremControle.close();
}
