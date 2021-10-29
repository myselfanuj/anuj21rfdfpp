import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryScreen extends StatefulWidget {
  final String name;

  const CategoryScreen({Key? key, required this.name}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  double _currentSliderValue = 20;

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
                        '${widget.name}',
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
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 150,


                        child: MaterialButton(
                          height: 60,
                          onPressed: () {
                            setState(() {

                            });
                          },
                          color: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                child: SvgPicture.asset(
                                  "assets/icons/surface2.svg",

                                  color: Colors.blue[800],
                                  width: 25,
                                ),
                              ),
                              SizedBox(width:5),
                            Text(
                              "Main Light",
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 50,
                        width: 150,


                        child: MaterialButton(
                          minWidth: 200,
                          height: 60,
                          onPressed: () {
                            setState(() {

                            });
                          },
                          color: Colors.blue[800],
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child:  Row(children: [
                            Container(
                              child: SvgPicture.asset(
                                "assets/icons/furniture-and-household.svg",

                                color: Colors.white,
                                width: 25,
                              ),
                            ),
                            SizedBox(width:5),
                            Text(
                              "Desk Lights",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        height: 50,
                        width: 150,
                        child: MaterialButton(
                          height: 60,
                          onPressed: () async {
                          },
                          color: Colors.white,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(children: [
                            Container(
                              child: SvgPicture.asset(
                                "assets/icons/bed (1).svg",
                                color: Colors.blue[800],
                                width: 25,
                              ),
                            ),
                            SizedBox(width:5),
                            Text(
                              "Bed Lights",
                              style: TextStyle(
                                  color: Colors.blue[800],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          ],),

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
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
                        "Intensity",
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
                      Container(
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.center,
                          child: Container(
                            child: SvgPicture.asset(
                              "assets/icons/solution2.svg",
                              width: 25,
                            ),
                          )),
                   Expanded(child:   Slider(

                        value: _currentSliderValue,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        activeColor: Colors.yellow[600],
                        inactiveColor: Colors.grey[100],
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                   ) ),
                      Container(
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.center,
                          child: Container(
                            child: SvgPicture.asset(
                              "assets/icons/solution1.svg",
                              width: 25,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Colors",
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
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(5),
                        height: 45,
                        // width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(5),
                        height: 45,
                        // width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(5),
                        height: 45,
                        // width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(5),
                        height: 45,
                        // width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(5),
                        height: 45,
                        // width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(5),
                        height: 45,
                        // width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.brown[100],
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(5),
                        height: 50,
                        // width: MediaQuery.of(context).size.width / 2 - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.0),
                          ),
                        ),

                        child: SvgPicture.asset(
                          "assets/icons/+.svg",
                          width: 30,
                          color: Colors.blue[900],
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Scenes",
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
                                builder: (context) =>
                                    CategoryScreen(name: "Bed Room")),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            color: Colors.red[100],
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: SvgPicture.asset(
                                      "assets/icons/surface2.svg",
                                      width: 30,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Birthday",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CategoryScreen(name: "Bed Room")),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent[100],
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: SvgPicture.asset(
                                      "assets/icons/surface2.svg",
                                      width: 30,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Party",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
                                builder: (context) =>
                                    CategoryScreen(name: "Bed Room")),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: SvgPicture.asset(
                                      "assets/icons/surface2.svg",
                                      width: 30,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Relax",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CategoryScreen(name: "Relax")),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: 80,
                          width: MediaQuery.of(context).size.width / 2 - 30,
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                          child: Row(
                            children: [
                              Container(
                                  padding: EdgeInsets.all(15),
                                  alignment: Alignment.center,
                                  child: Container(
                                    child: SvgPicture.asset(
                                      "assets/icons/surface2.svg",
                                      width: 30,
                                    ),
                                  )),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Fun",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )),
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
        ],
      ),
    );
  }
}
