// screen_a.dart
import 'package:flutter/material.dart';
import 'package:project_lms/main.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Courses',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}