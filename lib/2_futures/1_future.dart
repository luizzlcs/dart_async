void main() {
  print('Inicio do P1');
  processo2();
  print('Fim do P1');
}

// A assinatura de um método asincrono
// retorna sempre um 'Feture' que pode
// ser <void> como também String ou outro
// e vao retornar o método  'async'.
Future<void> processo2() async {
  print('Inicio do P2');
  Future.delayed(Duration(seconds: 2), () {
    var i = 1;
    while (i < 8) {
      print(i);
      i++;
    }
    print('Fim do P2');
  });
}

// Nesse processo asincrono não preciso
// dizer que ele é async, porque ele não
// é do tipo void e possui um return da Future.
Future<String> processo3()async{
  return Future.delayed(Duration(seconds: 3), () => 'Fim do processo P3');
  
}