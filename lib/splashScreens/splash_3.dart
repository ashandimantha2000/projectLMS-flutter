import 'package:flutter/material.dart';
import 'package:project_lms/splashScreens/splash_4.dart';

class Splash_Three extends StatelessWidget {
  const Splash_Three({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Splash_Four()),
            );
          },
          child: Image.asset(
            'assets/images/Splash 3.png', // Replace with your image path
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
