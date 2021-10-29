import 'package:anuj21rdfpp/mainscreens/categoryscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      child: Text(
                        'Control \nPanel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                        child: SizedBox(
                      width: 10,
                    )),
                    Container(
                      child: SvgPicture.asset(
                        "assets/icons/user.svg",
                        width: 95,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "All Rooms",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      )),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CategoryScreen(name: "Bed Room")),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 150,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    child: SvgPicture.asset(
                                      "assets/icons/bed.svg",
                                      width: 60,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Bed room",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  )),
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "4 Lights",
                                    style: TextStyle(
                                        color: Colors.orangeAccent[100],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: SvgPicture.asset(
                                    "assets/icons/room.svg",
                                    width: 60,
                                  ),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Living room",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "2 Lights",
                                  style: TextStyle(
                                      color: Colors.orangeAccent[100],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: SvgPicture.asset(
                                    "assets/icons/kitchen.svg",
                                    width: 60,
                                  ),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Kitchen",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "5 Lights",
                                  style: TextStyle(
                                      color: Colors.orangeAccent[100],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: SvgPicture.asset(
                                    "assets/icons/bathtube.svg",
                                    width: 60,
                                  ),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Bathroom",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "1 Lights",
                                  style: TextStyle(
                                      color: Colors.orangeAccent[100],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: SvgPicture.asset(
                                    "assets/icons/house.svg",
                                    width: 60,
                                  ),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Outdoor",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "5 Lights",
                                  style: TextStyle(
                                      color: Colors.orangeAccent[100],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        height: 150,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                                padding: EdgeInsets.all(15),
                                alignment: Alignment.topLeft,
                                child: Container(
                                  child: SvgPicture.asset(
                                    "assets/icons/balcony.svg",
                                    width: 60,
                                  ),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Balcony",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "2 Lights",
                                  style: TextStyle(
                                      color: Colors.orangeAccent[100],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
