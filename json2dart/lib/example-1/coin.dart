import 'package:json2dart/example-1/something.dart';

class Coin {
  final String id;
  final List<String> something;
  final Something temp;

  Coin({
    required this.id,
    required this.something,
    required this.temp,
  });

  factory Coin.fromJson(Map<String, dynamic> json) {

    return Coin(
      id: json['id'],
      something: new List<String>.from(json['categories']),
      temp: Something.fromJson(json['image']),
    );
  }
}
