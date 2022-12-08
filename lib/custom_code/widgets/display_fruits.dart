// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class DisplayFruits extends StatefulWidget {
  const DisplayFruits({
    Key? key,
    this.width,
    this.height,
    required this.action,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Future<dynamic> Function() action;

  @override
  _DisplayFruitsState createState() => _DisplayFruitsState();
}

class _DisplayFruitsState extends State<DisplayFruits> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final String fruit in FFAppState().fruits)
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => {
              setState(() => FFAppState().fruit = fruit),
              widget.action(),
            },
            child: Container(
                width: double.infinity,
                height: 100,
                color: Colors.white,
                child: Center(child: Text(fruit))),
          ),
      ],
    );
  }
}
