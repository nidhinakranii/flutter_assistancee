import 'package:flutter/material.dart';
import 'package:flutter_assistant/bedroom/bluepart/bluepart.dart';
import 'package:flutter_assistant/bedroom/whitepart/white.dart';

final blue = Color.fromRGBO(10, 77, 162, 1);
final lightBlue = Color.fromRGBO(25, 90, 170, 1);
final white = Colors.white;
final offWhite = Color.fromRGBO(246, 248, 251, 1);
final yellow = Color.fromRGBO(255, 210, 57, 1);
final pink = Color.fromRGBO(255, 155, 155, 1);
final green = Color.fromRGBO(148, 235, 158, 1);
final skyBlue = Color.fromRGBO(148, 202, 235, 1);
final violate = Color.fromRGBO(165, 148, 235, 1);
final purple = Color.fromRGBO(222, 148, 235, 1);
final lightYellow = Color.fromRGBO(235, 208, 148, 1);
final blueText = Color.fromRGBO(0, 45, 103, 1);
final yellowText = Color.fromRGBO(255, 169, 57, 1);

class BEDROOM extends StatefulWidget {
  @override
  _BEDROOMState createState() => _BEDROOMState();
}

class _BEDROOMState extends State<BEDROOM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: blue,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Bluepart(),
            ),
            Expanded(
              flex: 4,
              child: Whitepart(),
            ),
            Container(
              child: Bottompart(),
            )
          ],
        ),
      ),
    );
  }
}

class Bottompart extends StatefulWidget {
  @override
  _BottompartState createState() => _BottompartState();
}

class _BottompartState extends State<Bottompart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      color: white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/bulb.png'),
          SizedBox(width: 50.0),
          Image.asset('images/home.png'),
          SizedBox(width: 50.0),
          Image.asset('images/setting.png'),
        ],
      ),
    );
  }
}
