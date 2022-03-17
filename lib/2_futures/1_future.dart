void main() {
  print('Inicio do P1');
  processo2();
  print('Fim do P1');

  // Imprimindo dados - 2 Then Staturs Then (Incompleto, concluído, (Com valor, Com Erro))
  // Concluído com valor vai entrar no Then
  // Concluído com error vai entrar no catchErro ou no OnError.
  // When complite sempre será executado!!!

  processo3().then((mensagem) {
    print(mensagem);
  });

  // Tratando erros vindos dentrodo then
  /* processo3().then(
    (mensagem) {
      throw Exception();
    },
    onError: (Error){
      print('Print de dentro do then');
    },
  ); */

  // Com tratamento de erro
  processo4()
      .then((mensagem) =>
          print('Mensagem do P4 $mensagem')) // Se não  der erro exeguta
      .catchError((onError) => print(
          'Erro ao executar o processo 4')) // se der erro executa essa etapa
      .whenComplete(
        () => print('Finalizou erro'),
      );

  // Usando o OnError para tratar
  processo4().then(
    (mensagem) => print('Mensagem do P4 $mensagem'), // Se não der erro exeguta
    onError: (Error) {
      print('Tratando erro pelo OnError do then!');
    },
  );
}

// A assinatura de um método asincrono
// retorna sempre um 'Feture' que pode
// ser <void> como também String ou outro
// e vao retornar o método  'async'.
Future<void> processo2() async {
  print('Inicio do P2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 1;
    while (i < 5) {
      print(i);
      i++;
    }
    print('Fim do P2');
  });
}

// Nesse processo asincrono não preciso
// dizer que ele é async, porque ele não
// é do tipo void e possui um return da Future.
Future<String> processo3() async {
  print('Inicio do P3');
  return Future.delayed(Duration(seconds: 1), () => 'Fim do processo P3');
}

Future<String> processo4() {
  print('Inicio do processo 4');
  return Future.delayed(Duration(seconds: 3), () => throw Exception());
}
