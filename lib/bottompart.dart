import 'package:flutter/material.dart';

class Bottompart extends StatefulWidget {
  @override
  _BottompartState createState() => _BottompartState();
}

class _BottompartState extends State<Bottompart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      color: Colors.white,
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
