import 'package:flutter/material.dart';



class Edit extends StatelessWidget {
  const Edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(
            'Edit Your Details...',
            textAlign: TextAlign.center,
          ),
        )
    );

  }
}