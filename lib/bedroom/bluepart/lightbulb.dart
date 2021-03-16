import 'package:flutter/material.dart';

final yellow = Color.fromRGBO(255, 210, 57, 1);

class Lightbulb extends StatelessWidget {
  final AnimationController animationController;
  Lightbulb({
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
        child: Stack(
          children: [
            Positioned(
              top: 110.0,
              left: 53.0,
              child: Container(
                height: 33.0,
                width: 33.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    // stops: [0.2, 0.4, 0.8, ],
                    center: Alignment.center,
                    colors: [
                      yellow,
                      yellow,
                      const Color(0xffd239),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Image.asset('images/group_38.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
