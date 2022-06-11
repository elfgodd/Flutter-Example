import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    Key? key,
    required this.text,
    required this.onClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        child: Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
        shape: const StadiumBorder(),
        color: Theme.of(context).accentColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        textColor: Colors.white,
        onPressed: onClicked,
      );
}
