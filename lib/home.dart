// screen_a.dart
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Image.network(
                  'https://static.vecteezy.com/packs/media/vectors/term-bg-1-3d6355ab.jpg',
              ),
            ),
          )
        ],
      )
    );
  }
}