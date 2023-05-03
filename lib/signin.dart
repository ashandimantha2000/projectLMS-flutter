import 'package:flutter/material.dart';
import 'navigation/forgot_psw.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  bool isChecked = false;

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
              height: 40,
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
                    height: 40,
                  ),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      color: Color.fromRGBO(1, 94, 172, 1.0),
                      fontSize: 32,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Enter your details below to Log in",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
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
                              height: 10,
                            ),
                            Center(
                                child: Text(
                                  "Sign In",
                                  style: TextStyle(
                                    color: Color.fromRGBO(1, 94, 172, 1.0),
                                    fontSize: 45,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            SizedBox(
                              height: 6,
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
                              height: 50,
                            ),

                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(1, 94, 172, 1.0),
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
                                        BorderRadius.circular(14))),
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
                              keyboardType: TextInputType.emailAddress,
                              controller: passController,
                              obscureText: passToggle,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 20.0, horizontal: 15),
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                    fontSize: 20,
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
                              height: 20,
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
                              height: 50,
                            ),
                            InkWell(
                              onTap: () {
                                if (_formfield.currentState!.validate()) {
                                  emailController.clear();
                                  passController.clear();
                                }
                              },
                              child: Container(
                                  height: 50,
                                  width: 300,
                                  child: Material(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Color.fromRGBO(1, 94, 172, 1.0),
                                    //elevation: 7.0,
                                    child: Center(
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),ta
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
