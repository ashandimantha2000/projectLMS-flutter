import 'package:flutter/material.dart';
import 'package:project_lms/main.dart';
import 'package:project_lms/lecturerView/moduleLecturer.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

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
                  Image.network(
                    'https://blog.hootsuite.com/wp-content/uploads/2020/02/Image-copyright.png',
                    width: 80,
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
                        Row(
                          children: [
                            Text(
                              "Announcements",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(84, 84, 84, 1.0),
                                fontSize: 24,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          color: Colors.blue,
                          elevation: 8,
                          borderRadius: BorderRadius.circular(5),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/Announcement.png",
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Text(
                              "My Courses",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color.fromRGBO(84, 84, 84, 1.0),
                                fontSize: 24,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Expanded(child: Container()),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Material(
                          color: Colors.blue,
                          elevation: 8,
                          borderRadius: BorderRadius.circular(5),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/image 6.png",
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  height: 100,
                                ),
                                FilledButton(
                                  child: Material(
                                    child: Container(
                                        alignment: Alignment.centerLeft,
                                        height: 80,
                                        color: Colors.blue,
                                        child: Expanded(
                                          child: Center(
                                            child: Row(
                                              children: [
                                                Text(
                                                  'Computing Project \n',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontFamily: 'Raleway',
                                                  ),
                                                ),
                                                Expanded(child: Container()),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                  ),
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => First_Module()),
                                )
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Material(
                          color: Colors.blue,
                          elevation: 8,
                          borderRadius: BorderRadius.circular(5),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/web 1.png",
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  height: 100,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 80,
                                  color: Color.fromRGBO(217, 52, 38, 1.0),
                                  child: Expanded(
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            '   Web Application Development \n',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Material(
                          color: Colors.blue,
                          elevation: 8,
                          borderRadius: BorderRadius.circular(5),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/mobile application 1.png",
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  height: 100,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 80,
                                  color: Color.fromRGBO(34, 34, 34, 1.0),
                                  child: Expanded(
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            '   Mobile Application Development \n',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Material(
                          color: Colors.blue,
                          elevation: 8,
                          borderRadius: BorderRadius.circular(5),
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () {},
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  "assets/images/web 1.png",
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  height: 100,
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  height: 80,
                                  color: Color.fromRGBO(1, 94, 172, 1.0),
                                  child: Expanded(
                                    child: Center(
                                      child: Row(
                                        children: [
                                          Text(
                                            '   IOT Project \n',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontFamily: 'Raleway',
                                            ),
                                          ),
                                          Expanded(child: Container()),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
