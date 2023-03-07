import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news/model/modal.dart';

class News {
// ignore: non_constant_identifier_names
 static Future<Article_model?> api_call() async {
    try {
      var api =
          "https://newsapi.org/v2/everything?q=tesla&from=2023-01-19&sortBy=publishedAt&apiKey=API_KEY";
      var response = await http.get(Uri.parse(api));
      var data = jsonDecode(response.body);
      return Article_model.fromJson(data);
    } catch (e) {
      print(e.toString());
    }
  }
}
