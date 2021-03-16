import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  final AnimationController animationController;

  Listview({
    @required this.animationController,
  });
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(1, 0),
        end: Offset.zero,
      ).animate(animationController),
      child: FadeTransition(
        opacity: animationController,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(
              width: 24.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: 124.0,
              child: Row(
                children: [
                  Image.asset('images/surface1.png'),
                  Text(
                    '  Main Light',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: 124.0,
              child: Row(
                children: [
                  Image.asset('images/furniture-and-household.png'),
                  Text(
                    '   Desk Light',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(9, 59, 123, 1),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            SizedBox(
              width: 12.0,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              width: 124.0,
              child: Row(
                children: [
                  Image.asset('images/bed_1.png'),
                  Text(
                    '  Bed Light',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
