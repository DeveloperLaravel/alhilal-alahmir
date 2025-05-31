import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:projectimagefirb/domain/models_product.dart';

class RepositoriesProduct {
  getProductDate() async {
    var url = Uri.https('https://fakestoreapi.com/', 'products');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body);
      list.map((json) => ModelsProduct.fromJson(json)).toString();
      // print(await response.stream.bytesToString());
    } else {
      throw Exception('Fial to get Data');
    }
  }
}
