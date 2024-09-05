import '../models/cep_model.dart';
import 'package:http/http.dart' as http;

class Util {
  static List<String> ceps(String values) {
    final listTemp = values.split(',');

    List<String> results = [];

    for (String str in listTemp) {
      if (str.trim() != "") {
        results.add(str.trim());
      }
    }

    return results;
  }

  static Future<CepModel> searchCep(String value) async {
    late CepModel cepResult;

    String url = "https://viacep.com.br/ws/$value/json";

    try {
      var response = await http.get(Uri.parse(url));

      //  print(response.body);

      if (response.statusCode == 200) {
        if (response.body.contains('erro')) {
          cepResult = CepModel(cep: 'Cep: $value - Dados não encontrado');
        } else {
          cepResult = CepModel.fromJson(response.body);
        }
      } else {
        cepResult = CepModel(cep: '$value - Erro de conexão com o servidor');
      }
    } catch (e) {
      cepResult = CepModel(cep: '$value Erro: ${e.toString()} \n');
    }

    return cepResult;
  }
}
