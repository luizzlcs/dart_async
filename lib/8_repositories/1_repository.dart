import 'package:dart_async/8_repositories/repositories/cidade_repository.dart';

Future<void> main() async {
  var cidadeRepository = CidadeRepository();

  try {
    var cidade = await cidadeRepository.buscarCidade();
    print(cidade);
  } catch (e) {
    print('Erro ao buscar cidade!');
  }
}
