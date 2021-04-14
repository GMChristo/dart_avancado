import 'package:assincrono_dart/repository/viacep_repository.dart';
import 'package:dio/dio.dart';

void run() async {
  print('Dio Rest API');

  var endereco = await ViaCepRepository().buscarEndereco();
  print('CEP: ${endereco.cep}');
  print('Logradouro: ${endereco.logradouro}');
  print(endereco.toMap());

  var dio = Dio();

  var comments = await dio.get('https://jsonplaceholder.typicode.com/comments',
      queryParameters: {'postId': 1});

  // print(comments.data[0]);

  Map<String, dynamic> requestSavePost = {
    'title': 'foo',
    'body': 'bar',
    'userId': 1
  };

  var responseSavePost = await dio.post(
      'https://jsonplaceholder.typicode.com/posts',
      data: requestSavePost);
  // print('POST');
  // print(responseSavePost.statusCode);
  // print(responseSavePost.data);

  Map<String, dynamic> requestUpdatePost = {
    'title': 'foo',
    'body': 'bar',
    'userId': 1
  };
  var responsePut = await dio.put(
    'https://jsonplaceholder.typicode.com/posts/1',
    data: requestUpdatePost,
  );
  // print('Put');
  // print(responsePut.statusCode);
  // print(responsePut.data);

  dioInterceptorsTeste();
}

//Interceptors
Future<void> dioInterceptorsTeste() async {
  // print('-------------Interceptors-------------');
  var dio = Dio();
  dio.interceptors.add(
    InterceptorsWrapper(
        onRequest: (options, handler) {
          // print('onRequest');
        },
        onResponse: (response, handler) {
          print(response);
        },
        onError: (error, handler) {
          if(error.response.statusCode == 400){
            //video tempo: 30min
          }
        }),
  );

  var comments = await dio.get('https://jsonplaceholder.typicode.com/comments',
      queryParameters: {'postId': 1});

  // print(comments.data[0]);
}
