// Asincrono » Que não mantém uma sincronia, com intervalos
// regulares, por não ser controlado
// por um sistema temporizador.
// Neste exemplo a função p2 é executado
// em paralelo com atraso de 2 sedudos.

void main() {
  print('Iniciou o processo');
  var i = 0;
  m2();
  p2();

  while (i < 10) {
    print(i++);
  }
}

p2() {
  Future.delayed(
    Duration(seconds: 2),
    () {
      print('Processo 2 sendo executado');
    },
  );
}

void m2() {
  print('Função 2');
}
