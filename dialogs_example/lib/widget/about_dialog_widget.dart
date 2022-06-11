import 'package:flutter/material.dart';
import 'package:dialogs_example/widget/button_widget.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({Key? key}) : super(key: key);

  @override

  /// [showAboutDialog] method from Flutter SDK
  Widget build(BuildContext context) => ButtonWidget(
      text: 'About Dialog',
      onClicked: () => showAboutDialog(
            context: context,
            applicationIcon: const FlutterLogo(),
            applicationVersion: '1.0.0',
            applicationName: 'Dialogs Example',
            applicationLegalese: '@ElfGodd',
          ));
}
