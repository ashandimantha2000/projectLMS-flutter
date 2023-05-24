import 'package:flutter/material.dart';
import 'package:project_lms/splashScreens/splash_3.dart';


class Splash_Two extends StatelessWidget {
  const Splash_Two({Key? key}) : super(key: key);

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
                  builder: (context) => Splash_Three()),
            );
          },
          child: Image.asset(
            'assets/images/Splash 2.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
