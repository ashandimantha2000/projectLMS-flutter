// not added
import 'package:flutter/material.dart';
import 'package:project_lms/header.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  /* @override
  Widget build(BuildContext context) {
    header1 = 'Notifications';
    header2 = 'Your Updates             ';
    return Header();
  }*/

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
                      'Notifications',
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
                          "See your ",
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontSize: 20),
                        ),
                        Text(
                          "Updates",
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
          SizedBox(height: 10,)
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
              height: 20,
            ),
            Text(
              "Notifications",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromRGBO(84, 84, 84, 1.0),
                fontSize: 24,
                fontFamily: 'Raleway',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            _itemChats(
              avatar: 'assets/images/notification.png',
              name: 'Assignment 03',
              chat:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor sed ',
              time: 'Yesterday',
            ),
            _itemChats(
              avatar: 'assets/images/notification.png',
              name: 'Presentation Reminder',
              chat:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor sed ',
              time: '2023.05.18',
            ),
          ],
        ),
      ),
    );
  }

  Widget _itemChats(
      {String avatar = '', name = '', chat = '', time = '00.00'}) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 0,
        child: Row(
          children: [
            Avatar(
              margin: EdgeInsets.only(right: 20),
              size: 60,
              image: avatar,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('$name',
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold)),
                      Text(
                        '$time',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$chat',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  Avatar({this.image, this.size = 50, this.margin = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
