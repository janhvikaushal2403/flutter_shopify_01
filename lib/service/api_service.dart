import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/quotes.dart';

class ApiService {
  final response = http.get(Uri.parse('https://dummyjson.com/quotes'));
  
  Future<List<Quotes>> getQuotes(response) async{
    return await
  }
}
