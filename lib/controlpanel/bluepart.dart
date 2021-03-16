import 'package:flutter/material.dart';

var blue = Color.fromRGBO(10, 77, 162, 1);
var lightBlue = Color.fromRGBO(25, 90, 170, 1);
var white = Colors.white;

class Bluepart extends StatefulWidget {
  @override
  _BluepartState createState() => _BluepartState();
}

class _BluepartState extends State<Bluepart> {
  @override
  Widget build(BuildContext context) {
    final H = MediaQuery.of(context).size.height;
    final W = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Positioned(
          top: 120.0,
          left: 30.0,
          child: Container(
            height: 170.0,
            width: 170.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: lightBlue,
            ),
          ),
        ),
        Positioned(
          top: 60.0,
          right: -60.0,
          child: Container(
            height: 170.0,
            width: 170.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: lightBlue,
            ),
          ),
        ),
        Positioned(
          top: -70.0,
          left: -40.0,
          child: Container(
            height: 170.0,
            width: 170.0,
            decoration: BoxDecoration(shape: BoxShape.circle, color: lightBlue),
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 60.0,
            left: 23.0,
            bottom: 20.0,
          ),
          color: blue.withOpacity(0.0),
          height: H / 4.5,
          width: W,
          child: Container(
            //color: Colors.black38,
            child: Row(
              children: [
                Text(
                  'Control\nPanel',
                  style: TextStyle(
                    fontFamily: 'Circular Std',
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Image.asset('images/user.png'),
              ],
            ),
          ),
        )
      ],
    );
  }
}
