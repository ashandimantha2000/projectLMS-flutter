// not added
import 'package:flutter/material.dart';
import 'package:project_lms/main.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primary,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              'Notification',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}