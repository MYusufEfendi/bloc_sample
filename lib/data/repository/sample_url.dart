import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
class SampleRequest{
  Future<List<dynamic>> getSampleJson() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    if(response.statusCode == 200){
      return jsonDecode(response.body);
    }else{
      throw Exception('Failed to load data');
    }
  }
}