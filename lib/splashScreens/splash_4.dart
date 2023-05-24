import 'package:flutter/material.dart';
import 'package:project_lms/signin.dart';

class Splash_Four extends StatelessWidget {
  const Splash_Four({Key? key}) : super(key: key);

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
                  builder: (context) => LoginPage()),
            );
          },
          child: Image.asset(
            'assets/images/Splash 4.png', // Replace with your image path
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
