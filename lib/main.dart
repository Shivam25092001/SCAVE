import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Intro_page.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.system,
      theme: ThemeData(primarySwatch: Colors.amber ),
      initialRoute: "/",
      routes: {
        "/": (context) => Intro(),
        "/login": (context) => Login(),
        "/home": (context) => homepage(),

      },
    );
  }
}

