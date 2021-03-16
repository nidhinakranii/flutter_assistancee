import 'package:flutter/material.dart';
import 'package:flutter_assistant/bedroom/bedroom.dart';

final offWhite = Color.fromRGBO(246, 248, 251, 1);
final blueText = Color.fromRGBO(0, 45, 103, 1);

class Whitepart extends StatefulWidget {
  @override
  _WhitepartState createState() => _WhitepartState();
}

class _WhitepartState extends State<Whitepart> {
  @override
  Widget build(BuildContext context) {
    //final H = MediaQuery.of(context).size.height;
    final W = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: offWhite,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(31.0),
          topRight: Radius.circular(50.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 25.0,
          right: 25.0,
          // bottom: 45.0,
          top: 23.0,
        ),
        child: Column(
          children: [
            Container(
              height: 30.0,
              width: W,
              child: Text(
                'All Rooms',
                style: TextStyle(
                  fontFamily: 'Circular Std',
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: blueText,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: Area()),
            ),
          ],
        ),
      ),
    );
  }
}

class Area extends StatefulWidget {
  @override
  _AreaState createState() => _AreaState();
}

class _AreaState extends State<Area> {
  final carditems = [
    {
      "name": "Bed room",
      "lightNumber": '4 lights',
      'image': 'images/bed.png',
    },
    {
      "name": "Living room",
      "lightNumber": '2 lights',
      'image': 'images/room.png',
    },
    {
      "name": "Kitchen",
      "lightNumber": '5 lights',
      'image': 'images/kitchen.png',
    },
    {
      "name": "Bathroom",
      "lightNumber": '1 lights',
      'image': 'images/bathtube.png',
    },
    {
      "name": "Outdoor",
      "lightNumber": '5 lights',
      'image': 'images/house.png',
    },
    {
      "name": "Balcony",
      "lightNumber": '52 lights',
      'image': 'images/balcony.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 3.8;
    final double itemWidth = size.width / 1.9;

    return GridView.builder(
        //padding: EdgeInsets.all(12.0),
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 6.0,
          crossAxisSpacing: 6.0,
          childAspectRatio: (itemWidth / itemHeight),
        ),
        itemCount: carditems.length,
        itemBuilder: (context, index) {
          return AreaDetails(
            areaName: carditems[index]['name'],
            areaLights: carditems[index]['lightNumber'],
            areaImage: carditems[index]['image'],
          );
        });
  }
}

class AreaDetails extends StatelessWidget {
  final areaName;
  final areaLights;
  final areaImage;

  AreaDetails({this.areaImage, this.areaName, this.areaLights});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: Colors.white,
      child: Hero(
        tag: areaName,
        child: InkWell(
          radius: 20.0,
          splashColor: Colors.red[200],
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return BEDROOM();
              },
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0, top: 20),
                    decoration: BoxDecoration(
                        //color: Colors.amber,
                        image: DecorationImage(image: AssetImage(areaImage))),
                    height: 40.0,
                    width: 40.0,
                  )
                ],
              ),
              SizedBox(
                height: 6.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0),
                      //color: Colors.purple,
                      height: 60.0,
                      width: 50.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Title(
                                  color: Colors.black,
                                  child: Text(
                                    '$areaName',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.normal),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 3.0,
                          ),
                          Row(
                            children: [
                              Title(
                                color: Colors.black,
                                child: Text(
                                  '$areaLights',
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Color.fromRGBO(255, 173, 66, 1),
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
