import 'package:flutter/material.dart';
import 'package:flutter_assistant/controlpanel/controlpanel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Circular Std'),
      home: ControlPannel(),
    );
  }
}
