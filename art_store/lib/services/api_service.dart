import 'dart:convert';

import 'package:http/http.dart';

import '../Models/Products.dart';

class item_api {
  String url = 'https://6437e921c1565cdd4d6116d5.mockapi.io/arts';
  Future<List?> fetchActivity() async {
    final response = await get(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
      },
    );
    //print(response.body);
    //print(response.statusCode);
    //print(response);
    if (response.statusCode == 200) {
      return Products.productList(json.decode(response.body));
    } else {
      throw Exception('Failed to load');
    }
  }
}
