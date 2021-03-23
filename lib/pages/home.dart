import 'package:flutter/material.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    int num = 1;
    String name = 'Shivam';
    var mood;
    if (num == 1) mood = 'funny';

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white ,
          title: Align(child: Text('SCAVE'),
            alignment: Alignment.center,
          ),
        ),

        body: Center(
            child: Container(
              child: Text("My first page of app by $name and mood is $mood ."),
            )
        ),

        drawer: AppDrawer(),
    );
  }
}

