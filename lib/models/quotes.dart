import 'dart:convert';

class Quotes {
  Quotes({required this.id, this.quote, this.author});
  final int id;
  final String? quote;
  final String? author;

  factory Quotes.fromJson(Map<String, dynamic> json) {
    return Quotes(id: json["id"], quote: json["quote"], author: json["author"]);
  }
}
