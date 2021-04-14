import 'package:assincrono_dart/models/cidade_model.dart';
import 'package:dio/dio.dart';

class ViaCepRepository {
  Future<CidadeModel> buscarEndereco() async {
    var url = 'https://viacep.com.br/ws/01001000/json/';
    var dio = Dio();
    Response response = await dio.get(url);

    if (response.statusCode == 200) {
      var respData = response.data;

      if (respData['erro'] != null) {
        print('Erro ao buscar endereço');
        return null;
      } else {
        return CidadeModel.fromMap(respData);
      }
    }
  }
}
