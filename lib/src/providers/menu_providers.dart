import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    getData();
  }

  Future<List<dynamic>> getData() async {
    final data = await rootBundle.loadString('data/menu.json');
    final response = json.decode(data);
    options = response['routes'];

    return options;
  }
}

final menuProvider = new _MenuProvider();
