// screen_a.dart
import 'package:flutter/material.dart';
import 'package:project_lms/navigation/courses.dart';
import 'package:project_lms/navigation/my_courses.dart';
import 'package:project_lms/Home_Screens/Time_table.dart';
import 'package:project_lms/Home_Screens/email.dart';
import 'package:project_lms/Home_Screens/Library.dart';

import '../Home_Screens/edit.dart';

class LecturerHome extends StatelessWidget {
  const LecturerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      'assets/images/ply-logo.png',
                      width: 230,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.only(left: 40, top: 5, bottom: 5),
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "Search",
                          suffixIcon: Icon(Icons.search),
                          suffixIconColor: Colors.black54,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 1),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 51, 51, 1.0),
                ),
                child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),

                        //--elevate_buttons here--
                        Padding(padding: EdgeInsets.all(2),
                          child:
                          Material(
                            color: Colors.blue,
                            elevation: 8,
                            borderRadius: BorderRadius.circular(5),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: InkWell(
                              splashColor: Colors.white,
                              onTap: () {},
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    "assets/images/Banner 1.png",
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    height: 100,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),


                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Email()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        primary: Color.fromRGBO(204, 52, 51, 1.0),
                                        side: BorderSide(
                                            color: Color.fromRGBO(51, 51, 51, 1.0),
                                            width: 3)),
                                    child: Container(
                                        width: double.infinity,
                                        height: 250.0,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(0.0),
                                        ),
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 50),
                                            Container(
                                              child: Image.asset(
                                                "assets/images/email 1.png",
                                                height: 100,
                                              ),
                                            ),
                                            Text(
                                              "Email",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 28,
                                                fontFamily: 'Raleway',
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        primary: Color.fromRGBO(01, 94, 172, 1.0),
                                        side: BorderSide(
                                            color: Color.fromRGBO(51, 51, 51, 1.0),
                                            width: 3)),
                                    child: Container(
                                      width: double.infinity,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0.0),
                                      ),
                                      child: Center(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                child: Image.asset(
                                                  "assets/images/map.png",
                                                  height: 70,
                                                ),
                                              ),
                                              Text(
                                                "Map",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontFamily: 'Raleway',
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Library()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  primary: Color.fromRGBO(42, 130, 131, 1.0),
                                  side: BorderSide(
                                      color: Color.fromRGBO(51, 51, 51, 1.0),
                                      width: 3)),
                              child: Container(
                                width: 160,
                                height: 400.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Center(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 130),
                                        Container(
                                          child: Image.asset(
                                            "assets/images/library.png",
                                            height: 100,
                                          ),
                                        ),
                                        Text(
                                          "Library",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontFamily: 'Raleway',
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyTimetable()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  primary: Color.fromRGBO(204, 52, 51, 1.0),
                                  side: BorderSide(
                                      color: Color.fromRGBO(51, 51, 51, 1.0),
                                      width: 3)),
                              child: Container(
                                width: double.infinity,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 40, right: 40, bottom: 10),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 30),
                                        Container(
                                          child: Image.asset(
                                            "assets/images/working-schedule.png",
                                            height: 100,
                                          ),
                                        ),
                                        Text(
                                          "   My Timetable",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontFamily: 'Raleway',
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyCoursesPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  primary: Color.fromRGBO(42, 130, 131, 1.0),
                                  side: BorderSide(
                                      color: Color.fromRGBO(51, 51, 51, 1.0),
                                      width: 3)),
                              child: Container(
                                width: double.infinity,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 60, right: 60, bottom: 10),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 30),
                                        Container(
                                          child: Image.asset(
                                            "assets/images/book.png",
                                            height: 70,
                                          ),
                                        ),
                                        Text(
                                          "     My Courses",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 28,
                                            fontFamily: 'Raleway',
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        primary: Color.fromRGBO(204, 52, 51, 1.0),
                                        side: BorderSide(
                                            color: Color.fromRGBO(51, 51, 51, 1.0),
                                            width: 3)),
                                    child: Container(
                                      width: 120.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0.0),
                                      ),
                                      child: Center(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [],
                                          )),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Edit()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        primary: Colors.white,
                                        side: BorderSide(
                                            color: Color.fromRGBO(51, 51, 51, 1.0),
                                            width: 3)),
                                    child: Container(
                                      width: 120.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(0.0),
                                      ),
                                      child: Center(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 35,
                                              ),
                                              Container(
                                                child: Image.asset(
                                                  "assets/images/edit.png",
                                                  height: 50,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "Edit",
                                                style: TextStyle(
                                                  color:
                                                  Color.fromRGBO(1, 94, 172, 1.0),
                                                  fontSize: 24,
                                                  fontFamily: 'Raleway',
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ]),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(1, 94, 172, 1.0),
                                    blurRadius: 50,
                                    offset: Offset(0, 10))
                              ]),
                          child: Column(
                            children: <Widget>[],
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}