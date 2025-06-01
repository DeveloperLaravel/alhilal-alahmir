import 'dart:convert';

import 'package:http/http.dart' as http;

class Repository {
  getUser() async {
    var client = http.Client();
    var url = Uri.https('https://jsonplaceholder.typicode.com/', 'posts');
    try {
      var response = await client.get(url);
      // var decodedResponse = jsonDecode(response.body);
      // print(decodedResponse);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    } finally {
      client.close();
    }
  }
}
