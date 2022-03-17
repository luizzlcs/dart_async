Future<void> main() async {
  var nomes = ['Rodrigo', 'Luana', 'Ghilherme'];

  print('Inicio');

  // imprimindo na sequencia com o forEach
  /* await Future.forEach<String>(nomes, (nome) async {
    print(await saudacao(nome));
  }); */

  // Usando o for in
  // Dessa forma ele demora três segundos
  // ao todo para exibir os três nomes
  /* for (var nome in nomes) {
    print(await saudacao(nome));
  } */

  // Vamos usar o Map para
  // executar os três em paralelo

  var nomesFuture = nomes.map((nome) => saudacao(nome)).toList();
  var saudacoes = await Future.wait(nomesFuture);
  print(saudacoes);

  print('Fim');
}

Future<String> saudacao(String nome) {
  print('Inicio $nome');
  return Future.delayed(
    Duration(seconds: 1),
    () {
      print('Fim $nome');
      return 'Ola $nome';
    },
  );
}
