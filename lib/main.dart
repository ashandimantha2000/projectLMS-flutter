//main file
import 'package:flutter/material.dart';
import 'package:project_lms/splashScreens/Welcome_page.dart';
import 'package:project_lms/Student/results.dart';


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

      home: Welcome_Page(),
      //HomePage or LoginPage or Welcome_Page

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

