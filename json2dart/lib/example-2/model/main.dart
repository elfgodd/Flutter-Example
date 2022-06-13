import 'package:flutter/material.dart';

import 'package:json2dart/example-2/model/person.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JSON Serializable App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  
  @override
  void initState() {
    super.initState();

    final person = Person(
      name: 'Hello',
      creditCardNumber: 'Hello',
      birthday: DateTime.now(),
    );

    final json = person.toJson();
    print('JSON: ${person.toJson()}');

    final newPerson = Person.fromJson(json);
    print('$newPerson');
  }

  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          // title: Text(MyApp.title),
          centerTitle: true,
        ),
        body: Container(),
      );
}
