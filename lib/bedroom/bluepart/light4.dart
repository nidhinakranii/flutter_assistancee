import 'package:flutter/material.dart';

final yellowText = Color.fromRGBO(255, 169, 57, 1);

class Light4 extends StatelessWidget {
  final AnimationController animationController;

  Light4({
    @required this.animationController,
  });
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(0, -1),
        end: Offset.fromDirection(-10.0, 0.0),
      ).animate(animationController),
      child: FadeTransition(
        opacity: animationController,
        child: Container(
          //   padding: EdgeInsets.all(16.0),
          alignment: Alignment.centerLeft,
          child: Text(
            '4 Lights',
            style: TextStyle(
              fontFamily: 'Circular Std',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: yellowText,
            ),
          ),
        ),
      ),
    );
  }
}
