import 'package:flutter/material.dart';

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
          title: Center(
            child: Text('SCAVE'),
          )
        ),

        body: Center(
            child: Container(
              child: Text("My first page of app by $name and mood is $mood ."),
            )
        ),

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                child: Center(
                  child: Text("hello Scavers !"),
                )
              ),
              ListTile(
                title: Text('Scan'),
              ),
              ListTile(
                title: Text('Last shopping list'),
              ),
              ListTile(
                title: Text('Upcoming notifications'),
              ),
              ListTile(
                title: Text('Donate'),
              ),
              ListTile(
                title: Text('Contact Us'),
              ),
            ],
          )

        ),
    );
  }
}

