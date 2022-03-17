Future<void> main() async {
  /* processo1()!.then((mensagem) {
    processo2()!
        .then((mensagem) => print(mensagem))
        .catchError((error) => print(error));
    print('Mensagem : $mensagem');
  }).catchError((error){
    print(error);
  }); */

  // Esse processo ↑acima pode ser substituido por esse aqui:

  print('Inicio do main');
  var mensagem = await processo1();
  print(mensagem);
  var mensagem2 = await processo2();
  print(mensagem2);
  // usando o try  catch para tramento da excepcion
  try {
    await processo3();
  } on Exception catch (err) {
    print('Erro na chamada do processo3! $err');
  }
  print('Fim do main');
}

Future<String>? processo1() {
  print('Inicio P1');
  return Future.delayed(
    Duration(seconds: 1),
    () => 'Fim do processo P1',
  );
}

Future<String>? processo2() {
  print('Inicio P2');
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Fim do processo P2',
  );
}

// processo 3 com retorno de erro
Future<String>? processo3() {
  print('Inicio P3');
  return Future.delayed(
    Duration(seconds: 2),
    () => throw Exception(),
  );
}
