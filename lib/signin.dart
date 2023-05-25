import 'dart:convert';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_lms/fragments/dashboard_of_fragments.dart';
import 'package:project_lms/model/student.dart';
import 'package:project_lms/nav.dart';
import 'package:project_lms/navigation/courses.dart';
import 'package:project_lms/userPreferences/student_preferences.dart';
import 'lecturerView/navLecturer.dart';
import 'navigation/forgot_psw.dart';
//for backend
import 'package:http/http.dart' as http;
import 'api_connector/api_connection.dart';
import 'navigation/my_courses.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool passToggle = true;

  bool isChecked = false;

  //User Type Dropdown
  final List<String> genderItems = [
    'Student',
    'Staff',
  ];

  String? selectedValue;

  //for the backend
  signinUserNow() async
  {
    try
    {
      var res = await http.post(
          Uri.parse('http://192.168.8.102/api_lms/student/signin.php'),
          body: {
            "std_email":emailController.text,
            "std_password":passController.text,
          }
      );

      print(res.statusCode);
      if(res.statusCode==200)

      {
        var resBodyofLogin = jsonDecode(res.body);
        print(res.body);
        //var resBodyofLogin= await json.decode(json.encode(res.body));
        print(resBodyofLogin);
        if(resBodyofLogin['success']==true)
        {
          Fluttertoast.showToast(msg: "You're Logged-In Successfully");
          Student studentInfo = Student.fromJson(resBodyofLogin["userData"]);
          //save user info to local storage using shared references
          await RememberStudentPreferences.saveRememberUser(studentInfo);

          Future.delayed(Duration(milliseconds: 1000),()
          {
            Get.to(DashboardOfFragments());
          });


          Get.to(DashboardOfFragments());

        }
        else
        {
          Fluttertoast.showToast(msg: "Error: Incorrect username or password.\nPlease try again.");
        }
      }
    }
    catch(errorMsg)
    {
      print("Error :: "+errorMsg.toString());

    }
  }


  signInNew()
  {
    dynamic userEmail=emailController.text;
    dynamic userPass =passController.text;

    if(userEmail=='admin@plymouth.uk' && userPass=='admin@P123')
    {
      if(selectedValue=='Student')
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
      else if(selectedValue=='Staff')
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LecHomePage()),
        );
      }
    }
    else
    {
      Fluttertoast.showToast(msg: "Error: Incorrect username or password.\nPlease try again.");

    }



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(232, 232, 232, 1.0),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 27,
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      'assets/images/image-01.png',
                      width: 80,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Color.fromRGBO(1, 94, 172, 1.0),
                      fontSize: 30,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "To the Discoid LMS",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                    )
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Form(
                        key: _formfield,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 6,
                            ),
                            Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Color.fromRGBO(1, 94, 172, 1.0),
                                    fontSize: 38,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            SizedBox(
                              height: 4,
                            ),
                            Center(
                                child: Text(
                                  "Enter your details below to Log in",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                  ),
                                )),
                            SizedBox(
                              height: 25,
                            ),

                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(1, 94, 172, 1.0),
                                      blurRadius: 20,
                                      offset: Offset(0, 1),
                                    )
                                  ]),
                              child: Column(
                                children: <Widget>[],
                              ),
                            ),

                            //-->Email text field
                            TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                decoration: InputDecoration(
                                  labelText: "Email Address",
                                  labelStyle: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Raleway',
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(14),
                                  ),
                                ),
                                validator: (value) {
                                  bool emailValid = RegExp(
                                      r"^[zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value!);

                                  if (value!.isEmpty) {
                                    return "Enter Email";
                                  } else if (!emailValid) {
                                    return "Enter Valid Email";
                                  }

                                }),

                            SizedBox(
                              height: 25,
                            ),

                            //-->Password text field
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: passController,
                              obscureText: passToggle,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 20.0, horizontal: 15),
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Raleway',
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(14)),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        passToggle = !passToggle;
                                      });
                                    },
                                    child: Icon(passToggle
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  )),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Password";
                                } else if (passController.text.length < 6) {
                                  return "Password length should be more than 6 characters";
                                }

                              },
                            ),

                            SizedBox(
                              height: 25,
                            ),

                            //-->User Type text field
                            DropdownButtonFormField2(
                              decoration: InputDecoration(
                                //Add isDense true and zero Padding.
                                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                                isDense: true,
                                contentPadding: EdgeInsets.zero,

                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(14),
                                ),
                                //Add more decoration as you want here
                                //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                              ),
                              isExpanded: true,
                              hint: const Text(
                                'Select Account Type',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Raleway',
                                ),
                              ),
                              items: genderItems
                                  .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Raleway',
                                  ),
                                ),
                              ))
                                  .toList(),
                              validator: (value) {
                                if (value == null) {
                                  return 'Please Select a User Account Type.';
                                }
                                return null;
                              },
                              onChanged: (value) {
                                selectedValue = value.toString();
                                print(selectedValue);
                              },
                              onSaved: (value) {
                                selectedValue = value.toString();
                                print(selectedValue);
                              },
                              buttonStyleData: const ButtonStyleData(
                                height: 60,
                                padding: EdgeInsets.only(left: 0, right: 10),
                              ),
                              iconStyleData: const IconStyleData(
                                icon: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black45,
                                ),
                                iconSize: 30,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 12,
                            ),

                            Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          side: const BorderSide(
                                            // set border color here
                                            color: Color.fromRGBO(1, 94, 172, 1.0),
                                          ),


                                          value: isChecked,
                                          onChanged: (value) {
                                            setState(() {
                                              isChecked = value!;
                                            });
                                          },

                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5.0),

                                          ),
                                          checkColor: Colors.white,
                                          activeColor: Color.fromRGBO(1, 94, 172, 1.0),
                                        ),
                                        Text(
                                          'Remember Me',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Raleway',
                                            color: Color.fromRGBO(1, 94, 172, 1.0),
                                          ),
                                        ),
                                      ],
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => ForgotPswPage()),
                                        );
                                      },
                                      child: Text(
                                        'Forgot Password?',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Raleway',
                                          color: Color.fromRGBO(1, 94, 172, 1.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),


                            //-->Sign in btn
                            SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {

                                if(_formfield.currentState!.validate())
                                {
                                  print("It works");
                                  //signinUserNow();
                                  signInNew();
                                }
                                print(" Yes, It works");
                                //signinUserNow();
                                signInNew();
                              },
                              child: Container(
                                  height: 50,
                                  width: 330,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color.fromRGBO(1, 94, 172, 1.0),
                                    //elevation: 7.0,
                                    child: Center(
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 23,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}