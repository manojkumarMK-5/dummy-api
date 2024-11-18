import 'package:http/http.dart' as http;

class ApiService {
  Future <void> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/comments');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      print(json) ;
    } else {
      throw ('error');
    }
  }
}