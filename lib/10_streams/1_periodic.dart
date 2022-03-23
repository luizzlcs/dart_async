Future<void> main() async {
  print('Inicio...');
  final interval = Duration(milliseconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

  //await for
  await for (var i in stream) {
    print(i);
  }
}

int callback(int value) {
  print('O valor é $value');
  return (value + 1) * 2;
}
