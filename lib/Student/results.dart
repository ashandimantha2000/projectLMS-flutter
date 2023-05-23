import 'package:flutter/material.dart';
import 'package:project_lms/main.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(1, 94, 172, 1.0),
      body: SafeArea(
        child: Column(
          children: [
            _top(),
            _body(),
          ],
        ),
      ),
    );
  }

//--top of the body--
  Widget _top() {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Results',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "Your ",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 20),
                        ),
                        Text(
                          "Performance",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Image.network(
                  'https://blog.hootsuite.com/wp-content/uploads/2020/02/Image-copyright.png',
                  width: 80,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  //--message list--
  Widget _body() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
        ),
        child: ListView(
          padding: EdgeInsets.only(top: 20),
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 40, top: 5, bottom: 5),
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: "Search",
                    suffixIcon: Icon(Icons.search),
                    suffixIconColor: Colors.black54,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),




                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Year 1 Semester 1",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      color: Color.fromRGBO(239, 236, 236, 1.0),
                      padding: const EdgeInsets.all(20),
                      child:
                    Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                      'PUSL2022',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 18),
                    ),
                            ),
                            Expanded(
                              child: Text(
                                'A-',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18,),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'PUSL2026',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'B+',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18,),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'PUSL2019',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'A+',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 18,),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'PUSL2020',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'C+',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontFamily: 'Raleway',
                                    fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Year 1 Semester 2",
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontFamily: 'Raleway',
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      color: Color.fromRGBO(239, 236, 236, 1.0),
                      padding: const EdgeInsets.all(20),
                      child:
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'PUSL2022',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'B-',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'PUSL2026',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'A+',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'PUSL2019',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'B+',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'PUSL2020',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 18),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'B+',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontFamily: 'Raleway',
                                      fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),


            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
