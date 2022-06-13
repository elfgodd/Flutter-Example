// Example of json_serializable.dart
// https://github.com/google/json_serializable.dart/blob/master/example/lib/example.dart
// Run this command to build the example:
// flutter packages pub run build_runner build

import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  final String name;
  final String? creditCardNumber;
  final DateTime birthday;

  const Person({
    required this.name,
    required this.creditCardNumber,
    required this.birthday,
  });
  
  /// [This 2 lines of code come from the example config]
  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
  /// [Config ends here]

  @override
  String toString() =>
  'User{name: $name, creditCardNumber: $creditCardNumber, birthday: $birthday}';
}