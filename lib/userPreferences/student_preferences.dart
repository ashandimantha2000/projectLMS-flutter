import 'dart:convert';

import 'package:project_lms/model/student.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RememberStudentPreferences
{
  //save-remember User-Info
  static Future<void> saveRememberUser(Student studentInfo) async
  {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String studentJsonData = jsonEncode(studentInfo.toJson());
    await preferences.setString("currentUser", studentJsonData);
  }
}