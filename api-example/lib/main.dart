import 'package:flutter/material.dart';

// import 'package:api_example/home_screen.dart'; // Example 1
// import 'package:api_example/example_two.dart'; // Example 2
// import 'package:api_example/example_three.dart'; // Example 3
// import 'package:api_example/example_four.dart'; // Example 4
// import 'package:api_example/example_five.dart'; // Example 5
import 'package:api_example/signup.dart'; // Example 6

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignUpScreen(),
    );
  }
}