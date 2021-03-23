import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:splashscreen/splashscreen.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: MyRoutes.loginRoute,
      backgroundColor: const Color(0xffFFCC00),

      image: Image.asset("Assets/images/Full_SCAVE.jpg"),
      photoSize: 150,

    );

  }
}
