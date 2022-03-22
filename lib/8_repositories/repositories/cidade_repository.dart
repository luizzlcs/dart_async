import '../../7_modelos/cidade.dart';
import 'package:http/http.dart' as http;

class CidadeRepository {
  Future<Cidade> buscarCidade() async {
    var url = 'https://viacep.com.br/ws/59114035/json/';
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Cidade.fromJson(response.body);
    } else {
      throw Exception();
    }
  }
}
