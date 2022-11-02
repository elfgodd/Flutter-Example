import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Flutter Demo'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          // child: Image(image: NetworkImage(dragonball)),
          child: Image(image: NetworkImage('images/image-02.jpeg')),
        ),
      ),
    ),
  );
}

String dragonball =
    'https://store-images.s-microsoft.com/image/apps.39852.14455250034361967.824623c3-91b6-402f-9a68-c66bfac9bc20.7bfae929-5b2a-4efe-9639-5ffd1e2de297?q=90&w=480&h=270';
