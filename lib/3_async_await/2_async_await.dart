Future<void> main() async {}

Future<String> saudacao(String nome) {
  return Future.delayed(Duration(seconds: 1), () => 'Olá $nome');
}

// Acrescentar um async sempre que você
// tiver um await dentro do seu método.
Future<void> p1() async {
  await saudacao('nome');
}

// Porém se seu método já retorna
// um Feture, não precisa usar o async
Future<String> p2() {
  saudacao('nome');
  return Future.value();
}

//----------------//--------------------------//


