import 'package:flutter/material.dart';
import 'file:///E:/Android_projects/flutter_app/lib/pages/home.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(firstApp());
}

// ignore: camel_case_types
class firstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
      themeMode: ThemeMode.dark,

      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      );
  }
}

