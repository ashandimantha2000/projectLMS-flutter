// screen_b.dart
import 'package:flutter/material.dart';
import 'package:project_lms/main.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Account',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}