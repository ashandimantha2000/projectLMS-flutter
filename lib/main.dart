//main file
import 'package:flutter/material.dart';
import 'nav.dart';
import 'signin.dart';
import 'package:project_lms/api_connector/signin_api.dart';
import 'navigation/home.dart';
import 'navigation/notifications.dart';
import 'navigation/courses.dart';
import 'navigation/my_courses.dart';
import 'package:project_lms/My_Courses/Module_inside.dart';
import 'package:project_lms/Lecturer/lecturer.dart';
import 'package:project_lms/My_Courses/results.dart';

//hardcode
// var myusername = 'Ashan';
// var mypassword = '1234';





//Colours
const primary = Color.fromRGBO(1, 94, 172, 1.0);
const secondaryred = Color.fromRGBO(217, 52, 38, 1.0);
const secondarygray = Color.fromRGBO(232, 232, 232, 1.0);

void main() {
  //send data
  // sendSignInData(myusername, mypassword);
  //Used this to not open app with a white screem
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Discoid LMS',

      home: LoginPage(),
      //HomePage or LoginPage

    ),
  );
}

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Results();
  }
}
