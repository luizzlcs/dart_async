import 'dart:async';
// Para compreender melhor leia esse artigo https://dart.cn/articles/archive/event-loop
void main() {
  print('Inicio do Main');
  scheduleMicrotask(() => print('Microtasck #2'));
  print(DateTime.now());
  Future.delayed(Duration(seconds: 1), () {
    print(DateTime.now());
    print('Future #1 delayed');
  });

  print('Fim do Main');
}
