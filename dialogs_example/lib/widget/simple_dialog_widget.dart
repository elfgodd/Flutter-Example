import 'package:flutter/material.dart';

import 'package:dialogs_example/widget/button_widget.dart';
import 'package:dialogs_example/utils.dart';

class SimpleDialogWidget extends StatelessWidget {
  const SimpleDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ButtonWidget(
    text: 'Simple Dialog',
    onClicked: () => showSimpleDialog(context),
  );

  /// [showDialog] method from Flutter SDK
  void showSimpleDialog(BuildContext context) => showDialog(
    builder: (context) => SimpleDialog(
      title: const Text('Select Option'),
      children: <Widget>[
        SimpleDialogOption(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          onPressed: () {
            Utils.showSnackBar(context, title: 'Selected Option 1');
            Navigator.pop(context);
          },
          child: const Text(
            'Option 1',
            style: TextStyle(fontSize: 16),
          ),
        ),
        SimpleDialogOption(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          onPressed: () {
            Utils.showSnackBar(context, title: 'Selected Option 2');
            Navigator.pop(context);
          },
          child: const Text(
            'Option 2',
            style: TextStyle(fontSize: 16),
          ),
        ),
        SimpleDialogOption(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          onPressed: () {
            Utils.showSnackBar(context, title: 'Selected Option 3');
            Navigator.pop(context);
          },
          child: const Text(
            'Option 3',
            style: TextStyle(fontSize: 16),
          ),
        ),
        SimpleDialogOption(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          onPressed: () {
            Utils.showSnackBar(context, title: 'Selected Option 4');
            Navigator.pop(context);
          },
          child: const Text(
            'Option 4',
            style: TextStyle(fontSize: 16),
          ),
        )
      ]
    ), context: context,
  );
}

// void showSimpleDialog(BuildContext context) => showDialog(
//   context: context,
//   child: SimpleDialog(
//     title: Text('Select Option'),
//     children: <Widget>[
//       SimpleDialogOption(
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//         onPressed: () {
//           Utils.showSnackBar(context, title: 'Selected Option 1');
//           Navigator.pop(context);
//         },
//         child: Text(
//           'Option 1',
//           style: const TextStyle(fontSize: 16),
//         ),
//       )
//     ]
//   ),
// );