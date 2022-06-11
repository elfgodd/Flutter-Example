import 'package:flutter/material.dart';

import 'package:dialogs_example/widget/button_widget.dart';

class CustomDialogAlert extends StatelessWidget {
  const CustomDialogAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ButtonWidget(
      text: 'Custom Dialog',
      onClicked: () => showCustomDialog(context),
    );

  /// [showDialog] method from Flutter SDK
  void showCustomDialog(BuildContext context) => showDialog(
    barrierDismissible: false,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 12),
              const Text(
                'This is Custom Dialog',
                style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'You get more customization freedom in this type of dialogs',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                child: const Text('Close'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ), context: context
  );
}