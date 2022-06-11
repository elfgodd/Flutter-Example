import 'package:flutter/material.dart';

import 'package:dialogs_example/main.dart';
import 'package:dialogs_example/widget/simple_dialog_widget.dart';
import 'package:dialogs_example/widget/alert_dialog_widget.dart';
import 'package:dialogs_example/widget/custom_dialog_widget.dart';
import 'package:dialogs_example/widget/about_dialog_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(MyApp.title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              SimpleDialogWidget(),
              SizedBox(height: 8),
              AlertDialogWidget(),
              SizedBox(height: 8),
              CustomDialogAlert(),
              SizedBox(height: 8),
              AboutDialogWidget(),
            ],
          ),
        ),
      );
}
