import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_lms/lecturerView/uploadedFile.dart';
import 'package:project_lms/main.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

dynamic temp=0;


class Delete_Module extends StatefulWidget {
  const Delete_Module({Key? key}) : super(key: key);

  @override
  _Delete_ModuleState createState() => _Delete_ModuleState();
}

class _Delete_ModuleState extends State<Delete_Module> {
  final List<String> _files = [];

  void _selectFiles() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.any);
    if (result != null) {
      setState(() {
        _files.add(result.files.single.path!);
        Fluttertoast.showToast(msg: "Presentation1 Uploaded Successfully");
        Navigator.push(
          context,
          MaterialPageRoute(

              builder: (context) => Upload_Module()),

        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Container(
        width: double.infinity,
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My Courses',
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
                            "Time to ",
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontSize: 20),
                          ),
                          Text(
                            "Teach",
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
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Padding(
                            padding:
                            EdgeInsets.only(left: 40, top: 5, bottom: 5),
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
                          height: 20,
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Computing Project",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              //Box Container 01 - Lecture Materials
                              Container(
                                width: 500,
                                height: 230,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(232, 232, 232, 100),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.start,
                                            'Lecture Materials',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          Image.asset('assets/images/up-arrow.png',
                                              height: 11 )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/microsoft-powerpoint.png',
                                            height: 40,
                                          ),
                                          Text(
                                            'Lecture 01',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 165,
                                          ),
                                          Image.asset('assets/images/delete.png',
                                            height: 25,
                                          ),

                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/microsoft-powerpoint.png',
                                            height: 40,
                                          ),
                                          Text(
                                            'Lecture 02',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 165,
                                          ),
                                          Image.asset('assets/images/delete.png',
                                            height: 25,
                                          ),
                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Image.asset('assets/images/microsoft-powerpoint.png',
                                            height: 40,
                                          ),
                                          Text(
                                            'Lecture 04',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 165,
                                          ),
                                          Image.asset('assets/images/delete.png',
                                            height: 25,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              //Upload
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: GestureDetector(
                                  onTap:
                                  _selectFiles,

                                  child: SizedBox(
                                    width: 500,
                                    height: 50,
                                    child: DottedBorder(
                                      dashPattern: const [7],
                                      strokeWidth: 3,
                                      color: Colors.blue,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 50),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children:  [
                                              Image.asset('assets/images/upload.png', height: 24,),
                                              SizedBox(width: 30,),
                                              Text(
                                                'Upload',
                                                style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),



                              //Box Container 02 - Coursework
                              Container(
                                width: 500,
                                height: 220,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(232, 232, 232, 100),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.start,
                                            'Coursework',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          Image.asset('assets/images/up-arrow.png',
                                              height: 11 )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/coursework.png',
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Coursework 01',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 130,
                                          ),
                                          Image.asset('assets/images/delete.png',
                                            height: 25,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/coursework.png',
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Coursework 02',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 130,
                                          ),
                                          Image.asset('assets/images/delete.png',
                                            height: 25,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset('assets/images/coursework.png',
                                            height: 30,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            'Coursework 03',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 19,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          SizedBox(
                                            width: 130,
                                          ),
                                          Image.asset('assets/images/delete.png',
                                            height: 25,
                                          ),
                                        ],
                                      ),


                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              //Upload
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: GestureDetector(
                                  onTap: _selectFiles,
                                  child: SizedBox(
                                    width: 500,
                                    height: 50,
                                    child: DottedBorder(
                                      dashPattern: const [7],
                                      strokeWidth: 3,
                                      color: Colors.blue,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 50),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children:  [
                                              Image.asset('assets/images/upload.png', height: 24,),
                                              SizedBox(width: 30,),
                                              Text(
                                                'Upload',
                                                style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),


                              //Box Container 03 - References
                              Container(
                                width: 500,
                                height: 88,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(232, 232, 232, 100),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 0,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            textAlign: TextAlign.start,
                                            'References',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          Image.asset('assets/images/down-arrow.png',
                                              height: 11 )
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 20,
                              ),

                              //Upload
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                child: GestureDetector(
                                  onTap: _selectFiles,
                                  child: SizedBox(
                                    width: 500,
                                    height: 50,
                                    child: DottedBorder(
                                      dashPattern: const [7],
                                      strokeWidth: 3,
                                      color: Colors.blue,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 50),
                                        child: Center(
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children:  [
                                              Image.asset('assets/images/upload.png', height: 24,),
                                              SizedBox(width: 30,),
                                              Text(
                                                'Upload',
                                                style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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