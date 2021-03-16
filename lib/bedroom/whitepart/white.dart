import 'package:flutter/material.dart';

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

class Whitepart extends StatefulWidget {
  @override
  _WhitepartState createState() => _WhitepartState();
}

class _WhitepartState extends State<Whitepart> {
  @override
  Widget build(BuildContext context) {
    final H = MediaQuery.of(context).size.height;
    return Container(
      height: H,
      decoration: BoxDecoration(
        color: offWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(31.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25.0,
          top: 1,
          right: 25.0,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                child: Intensity(),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                child: ColoR(),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Scenses(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorList = [
      pink,
      green,
      violate,
      purple,
      skyBlue,
      yellow,
    ];
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: colorList.length,
      itemBuilder: (context, index) {
        return Container(
          child: InkWell(
            onTap: () {
              print("tapped  " + colorList[index].toString());
            },
            child: Container(
              margin: EdgeInsets.all(7.0),
              width: 27,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: colorList[index]),
            ),
          ),
        );
      },
    );
  }
}

class Grid1 extends StatefulWidget {
  @override
  _Grid1State createState() => _Grid1State();
}

class _Grid1State extends State<Grid1> {
  final name = [
    'Birthday',
    'Party',
    'Relax',
    'Fun',
  ];
  final colorname = [
    pink,
    violate,
    skyBlue,
    green,
  ];
  final image = [
    'images/surface1.png',
    'images/surface1.png',
    'images/surface1.png',
    'images/surface1.png',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 4.3;
    final double itemWidth = size.width / 0.9;

    return GridView.builder(
        //padding: EdgeInsets.all(12.0),
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 25.0,
          childAspectRatio: (itemWidth / itemHeight),
        ),
        itemCount: name.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(17.0),
            width: 100.0,
            child: Row(
              children: [
                Image.asset(image[index]),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  name[index],
                  style: TextStyle(
                    color: white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: [
                  0.1,
                  0.5,
                ],
                colors: [colorname[index], colorname[index].withOpacity(0.85)],
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
          );
        });
  }
}

class Intensity extends StatefulWidget {
  @override
  _IntensityState createState() => _IntensityState();
}

class _IntensityState extends State<Intensity> {
  int _value = 100;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 35.0,
          ),
          child: Row(
            children: [
              Text(
                'Intensity',
                style: TextStyle(
                  color: blueText,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 5.0,
          ),
          child: Row(
            children: [
              Image.asset('images/solution2.png'),
              Expanded(
                child: Slider(
                  activeColor: yellow,
                  inactiveColor: white,
                  value: _value.toDouble(),
                  min: 1.0,
                  max: 100.0,
                  divisions: 5,
                  onChanged: (double newValue) {
                    setState(
                      () {
                        _value = newValue.round();
                      },
                    );
                  },
                ),
              ),
              Image.asset('images/solution.png'),
            ],
          ),
        ),
      ],
    );
  }
}

class ColoR extends StatefulWidget {
  @override
  _ColoRState createState() => _ColoRState();
}

class _ColoRState extends State<ColoR> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              Text(
                'Colors',
                style: TextStyle(
                  color: blueText,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  child: ColorList(),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'images/+.png',
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Scenses extends StatefulWidget {
  @override
  _ScensesState createState() => _ScensesState();
}

class _ScensesState extends State<Scenses> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Row(
            children: [
              Text(
                'Scenes',
                style: TextStyle(
                  color: blueText,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  padding: EdgeInsets.only(top: 30.0),
                  child: Grid1(),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class IMAGE extends StatelessWidget {
  final AnimationController animationController;

  IMAGE({
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
        child: Image.asset('images/group_38.png'),
      ),
    );
  }
}
