import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffFFCC00),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("Assets/images/Full_SCAVE.jpg"),
          Text("Hola Scaver!", style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
