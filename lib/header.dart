import 'package:flutter/material.dart';
import 'package:project_lms/main.dart';

String header1 = 'Header1';
String header2 = 'Header2';


class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  final repassController = TextEditingController();
  bool repassToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "$header1",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "$header2",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Image.network(
                        'https://blog.hootsuite.com/wp-content/uploads/2020/02/Image-copyright.png',
                        width: 80,
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 0.9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Container(
                      key: _formfield,

                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
