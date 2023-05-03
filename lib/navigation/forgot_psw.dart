import 'package:flutter/material.dart';
import 'package:project_lms/signin.dart';


class ForgotPswPage extends StatefulWidget {
  @override
  _ForgotPswPageState createState() => _ForgotPswPageState();
}

class _ForgotPswPageState extends State<ForgotPswPage> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final numController = TextEditingController();
  bool passToggle = true;

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
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                      child: Text(
                        "Let's Reset",
                        style: TextStyle(
                          color: Color.fromRGBO(1, 94, 172, 1.0),
                          fontSize: 32,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  SizedBox(
                    height: 2,
                  ),
                  Center(
                    child: Text(
                      "The Password",
                      style: TextStyle(
                          color: Color.fromRGBO(1, 94, 172, 1.0),
                          fontFamily: 'Raleway',
                          fontSize: 32),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Form(
                        key: _formfield,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(
                                            74, 89, 147, 0.5137254901960784),
                                        blurRadius: 50,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[],
                              ),
                            ),

                            //-->Name or Email text field
                            TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                controller: emailController,
                                decoration: InputDecoration(
                                    labelText: "Email Address",
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Raleway',
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(11))),
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
                              height: 30,
                            ),

                            //-->Password text field
                            TextFormField(
                                keyboardType: TextInputType.number,
                                controller: numController,
                                decoration: InputDecoration(
                                    labelText: "Code",
                                    labelStyle: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Raleway',
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(11))),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter the Code";
                                  }
                                }),

                            //-->Sign in btn
                            SizedBox(
                              height: 40,
                            ),
                            InkWell(
                              onTap: () {
                                if (_formfield.currentState!.validate()) {
                                  emailController.clear();
                                  numController.clear();
                                }
                              },
                              child: Container(
                                  height: 50,
                                  width: 300,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(11),
                                    color: Color.fromRGBO(1, 94, 172, 1.0),
                                    elevation: 7.0,
                                    child: Center(
                                      child: Text(
                                        "Reset Password",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )),
                            ),

                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Remember the password?",
                              style: TextStyle(
                                color: Color.fromRGBO(1, 94, 172, 1.0),
                                fontSize: 16,
                                fontFamily: 'Raleway',
                              ),
                            ),

                            SizedBox(
                              height: 3,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()),
                                );
                              },
                              child: Text('Login',
                                  style: TextStyle(
                                      color: Color.fromRGBO(1, 94, 172, 1.0),
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold)),
                            )
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