// Run this command to build the example:
// flutter packages pub run build_runner build
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:json2dart/example-3/complex_user.dart';
import 'package:json2dart/example-3/user.dart';
// import 'package:json2dart/example-3/json/response.json';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getUser(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Serializable'),
        centerTitle: true,
      ),
    );
  }

  void getUser(BuildContext context) async {
    // final file = await rootBundle.loadString('example-3/json/response.json');
    // final json = jsonDecode(file);
    // print(json);
    // User user = User.fromJson(json);   
    // User user = User.fromJson(json['user']);
    // print(user.email);

    // final response = await rootBundle.loadString('example-3/json/complex_response.json');
    final response = await rootBundle.loadString('json/complex_response.json');
    final json2 = jsonDecode(response);
    print(json2);

    //   final complexUser = ComplexUser.fromJson(json2['user']);

    //   print(complexUser.address.postalCode);

    //   print(complexUser.toJson());
  }
}
