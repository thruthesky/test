// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

Future sayHi(BuildContext context) async {
  Timer(Duration(seconds: 1), () {
// Show a dialog saying 'hi'
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Hi!, there...... (2)'),
          content: Text('This is a custom action!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  });
}
