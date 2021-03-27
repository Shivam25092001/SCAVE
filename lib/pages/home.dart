import 'package:flutter/material.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    int num = 1;
    String name = 'Shivam';
    var mood;
    if (num == 0) mood = 'funny';

    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xffFFCC00),
          title: Text('SCAVE',style: TextStyle(fontFamily: 'GlacialIndifference',fontWeight: FontWeight.bold)),
          ),

        body: Padding(

          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Container(
                child: Text("My first page of app by $name and mood is $mood .",style: TextStyle(fontSize: 20),),
              )
          ),
        ),


    );
  }
}

