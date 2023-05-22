// screen_b.dart
import 'package:flutter/material.dart';
import 'package:project_lms/header.dart';

import '../My_Courses/results.dart';
import '../signin.dart';


class LecAccount extends StatefulWidget {
  @override
  _LecAccountPageState createState() => _LecAccountPageState();
}


class _LecAccountPageState extends State<LecAccount> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 94, 172, 1.0),
      body: SafeArea(
        child: Column(
          children: [
            Container(
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
                              'Profile',
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
                                  "Staff ",
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Raleway',
                                      fontSize: 20),
                                ),
                                Text(
                                  "Details",
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
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: ListView(
                  padding: EdgeInsets.only(top: 20),
                  physics: BouncingScrollPhysics(),
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 40, top: 5, bottom: 5),
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
                      height: 20,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                          AssetImage('assets/images/lecturer.png'),
                          radius: 40,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Emma Charlotte",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "PLY 19670093",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                              ),
                            ),


                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name:          ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Position:          ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Qualifications:          \n",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Faculty:          ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Email:          ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Contact:          ",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 00,
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Emma Charlotte",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Senior Lecturer",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "BSc(Hons), MBA,\n Phd (Reading)",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Faculty of Bussiness",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "dfsbj@plymouth.ac.lk",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "(+94)77 898 27 32",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    OutlinedButton(

                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      ), child: Text(
                        style: TextStyle(
                          color: Color.fromRGBO(1, 94, 172, 1.0),
                          fontSize: 18,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                        ),
                        'Log Out'
                    ),


                    )],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }

}
