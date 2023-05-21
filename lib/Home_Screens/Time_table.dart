import 'package:flutter/material.dart';

class MyTimetable extends StatefulWidget {
  @override
  _MyTimetableState createState() => _MyTimetableState();
}

class _MyTimetableState extends State<MyTimetable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
 ashan
      body: Text('Time table'),

      backgroundColor: Color.fromRGBO(1, 94, 172, 1.0),
      body: SafeArea(
        child: Column(
          children: [
            _top(),
            _body(),
          ],
        ),
      ),
    );
  }

//--top of the body--
  Widget _top() {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Timetable',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Time to  ",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 20),
                        ),
                        Text(
                          "Learn",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.network(
                  'https://blog.hootsuite.com/wp-content/uploads/2020/02/Image-copyright.png',
                  width: 80,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),

    );
  }

  //--message list--
  Widget _body() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.only(top: 20),
          physics: BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 20,
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
            SizedBox(
              height: 40,
            ),
            Table(
              border: TableBorder.all(color: Colors.white),
              children: [
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "Time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Mon",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Tue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Wed",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Thu",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Fri",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "9-12",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2019",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "1-4",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.purple,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2019",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.green,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2023",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "Time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Mon",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Tue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Wed",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Thu",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Fri",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "9-12",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2019",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "1-4",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.purple,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2019",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.green,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2023",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "Time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Mon",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Tue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Wed",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Thu",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Fri",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "9-12",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2019",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "1-4",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.blue,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2020",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.purple,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2022",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.red,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2019",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.green,
                        height: 50,
                        child: Center(
                          child: Text(
                            "PUSL2023",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "Time",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Mon",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Tue",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Wed",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Thu",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Color.fromRGBO(53, 57, 53, 1.0),
                        height: 50,
                        child: Center(
                          child: Text(
                            "Fri",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "9-12",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: TableCell(
                        child: Container(
                          color: Color.fromRGBO(53, 57, 53, 1.0),
                          height: 50,
                          child: Center(
                            child: Text(
                              "1-4",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )),
                    ),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                    Center(
                        child: TableCell(
                      child: Container(
                        color: Colors.yellow,
                        height: 50,
                        child: Center(
                          child: Text(
                            "",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
