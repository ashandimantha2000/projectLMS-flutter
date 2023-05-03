// screen_b.dart
import 'package:flutter/material.dart';
import 'package:project_lms/header.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    header1='My Account';
    header2='Your Data Here';
    return Header();
  }
}