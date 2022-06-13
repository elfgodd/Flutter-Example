import 'package:flutter/material.dart';

import 'package:json2dart/example-1/api.dart';


void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlinedButton(
            onPressed: () async {
              await callApi();
            },
            child: const Text('Test API'),
          ),
        ],
      ),
      ),
    );
  }
}