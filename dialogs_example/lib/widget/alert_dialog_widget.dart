import 'package:flutter/material.dart';
import 'package:dialogs_example/widget/button_widget.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ButtonWidget(
        text: 'Alert Dialog',
        onClicked: () => showAlertDialog(context),
      );

  /// [showDialog] method from Flutter SDK
  void showAlertDialog(BuildContext context) => showDialog(
      builder: (context) => AlertDialog(
        title: const Text('Sample Alert Dialog'),
        content: const Text(
          'This is an implementation of the AlertDialog widget from the Flutter SDK.',
        ),
        actions: [
          OutlinedButton(
            child: const Text('Close'),
            // Both onPressed works
            onPressed: () => Navigator.pop(context),
            // onPressed: () => Navigator.of(context).pop(),
          ),
        ]
      ), context: context,
    );
}
