import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_assistant/bedroom/bluepart/light4.dart';
import 'package:flutter_assistant/bedroom/bluepart/lightbulb.dart';
import 'package:flutter_assistant/bedroom/bluepart/listview.dart';

final blue = Color.fromRGBO(10, 77, 162, 1);
final lightBlue = Color.fromRGBO(25, 90, 170, 1);
final white = Colors.white;

class Bluepart extends StatefulWidget {
  @override
  _BluepartState createState() => _BluepartState();
}

class _BluepartState extends State<Bluepart>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    var animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animationController = animationController;
    Timer(Duration(seconds: 2), () => _animationController.forward());

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final H = MediaQuery.of(context).size.height;
    final W = MediaQuery.of(context).size.width;

    return Container(
      height: H,
      width: W,
      color: blue,
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(220, -40),
            child: Container(
              height: 170.0,
              width: 170.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: lightBlue,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(115, 140),
            child: Container(
              height: 170.0,
              width: 170.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: lightBlue,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-90, 30),
            child: Container(
              height: 170.0,
              width: 170.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: lightBlue,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 25.0,
                    right: 10.0,
                  ),
                  // color: Colors.red,
                  width: W,
                  child: Row(
                    children: [
                      Container(
                        // color: Colors.amber,
                        margin: EdgeInsets.only(
                          top: 40.0,
                        ),
                        width: 100.0,
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Row(
                                children: [
                                  Image.asset(
                                      'images/Icon_ionic-md-arrow-round-back.png'),
                                  Text(
                                    'Bed',
                                    style: TextStyle(
                                      fontSize: 27,
                                      fontWeight: FontWeight.bold,
                                      color: white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Room',
                                  style: TextStyle(
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold,
                                    color: white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: [
                                Light4(
                                  animationController: _animationController,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Lightbulb(
                        animationController: _animationController,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(
                    top: 15.0,
                    bottom: 15.0,
                  ),
                  height: 100.0,
                  width: W,
                  child: Listview(
                    animationController: _animationController,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
