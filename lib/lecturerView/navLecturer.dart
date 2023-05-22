import 'package:flutter/material.dart';
import 'package:project_lms/lecturerView/homeLecturer.dart';
import 'package:project_lms/lecturerView/accountLecturer.dart';
import 'package:project_lms/navigation/notifications.dart';
import 'package:project_lms/lecturerView/coursesLecturer.dart';
import 'package:project_lms/main.dart';




class LecHomePage extends StatefulWidget {
  @override
  LecHomePageState createState() => LecHomePageState();
}



class LecHomePageState extends State<LecHomePage> {
  var currentIndex = 0;
  final List _screens = [
    {"screen": const LecturerHome(), "title": "Home"},
    {"screen": const MyCoursesPage(), "title": "Courses"},
    {"screen": const Notifications(), "title": "Notifications"},
    {"screen":  LecAccount(), "title": "Account"}
  ];



  //Navigation
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_screens[currentIndex]["title"]),
      //
      // ),
      backgroundColor: secondarygray,
      bottomNavigationBar: Container(
        //margin: EdgeInsets.all(20),
        height: size.width * .155,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.15),
              //blurRadius: 30,
              offset: const Offset(0, 20),
            ),
          ],
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.zero,
              bottomRight: Radius.zero,
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: size.width * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                    () {
                  currentIndex = index;
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  margin: EdgeInsets.only(
                    bottom: index == currentIndex ? 0 : size.width * .029,
                    right: size.width * .0422,
                    left: size.width * .0422,
                  ),
                  width: size.width * .128,
                  height: index == currentIndex ? size.width * .014 : 0,
                  decoration: const BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(10),
                    ),
                  ),
                ),
                Icon(
                  listOfIcons[index],
                  size: size.width * .076,
                  color: index == currentIndex
                      ? const Color.fromRGBO(1, 94, 172, 1.0)
                      : const Color.fromRGBO(157, 157, 157, 1.0),
                ),
                SizedBox(height: size.width * .03),
              ],
            ),
          ),
        ),
      ),
      body: _screens[currentIndex]["screen"],
    );
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.menu_book_rounded,
    Icons.message_rounded,
    Icons.person_rounded,
  ];
}