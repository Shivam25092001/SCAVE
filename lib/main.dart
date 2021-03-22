import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:flutter_app/pages/Intro_page.dart';
import 'package:flutter_app/pages/home.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:async';

int time = 0;
void main() {
  runApp(FirstApp());
   }


class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(primarySwatch: Colors.amber),
      initialRoute: (time==1) ?MyRoutes.introRoute : MyRoutes.loginRoute,

      routes: {
        MyRoutes.introRoute: (context) => Intro(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.homeRoute: (context) => homepage(),
      },
    );
  }
}
