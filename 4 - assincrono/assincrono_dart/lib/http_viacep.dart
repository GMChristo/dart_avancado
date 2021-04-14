import 'dart:convert' as convert;
// import 'dart:html';
import 'package:http/http.dart' as http;

Future<void> run() async {
  var url = Uri.parse('https://viacep.com.br/ws/01001000/json/');
  var response = await http.get(url);

  if (response.statusCode == 200) {
    var respData = convert.jsonDecode(response.body);
    print(respData['cep']);
  }

  Map<String, dynamic> requestSavePost = {
    'title': 'foo',
    'body': 'bar',
    'userId': 1
  };

  var responseSavePost = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/posts'),
    body: convert.jsonEncode(requestSavePost),
  );
  print('POST');
  print(responseSavePost.statusCode);
  print(responseSavePost.body);

  Map<String, dynamic> requestUpdatePost = {
    'title': 'foo',
    'body': 'bar',
    'userId': 1
  };
  var responsePut = await http.put(
    Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
    body: convert.jsonEncode(requestUpdatePost),
  );
  print('Put');
  print(responsePut.statusCode);
  print(responsePut.body);

  var responseDelete = await http
      .delete(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
  print('Delete');
  print(responseDelete.statusCode);
  print(responseDelete.body);

  var responsePatch = await http.patch(
    Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
    body: convert.jsonEncode({'title': 'Gabriel Christo'}),
  );
  print('PATCH');
  print(responsePatch.statusCode);
  print(responsePatch.body);
}
