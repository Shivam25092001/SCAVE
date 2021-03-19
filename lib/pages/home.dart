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
            child: Text('Hello everyone'),
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
                  child: Text("It's Drawer bitch"),
                )
              ),


              ListTile(
                title: Text('LoL'),
              ),
              ListTile(
                title: Text('Fuck'),
              ),
              ListTile(
                title: Text('NoCode'),
              ),
              ListTile(
                title: Text('Ganja'),
              ),
              ListTile(
                title: Text('chlorine'),
              ),
              ListTile(
                title: Text('fluorine'),
              ),
              ListTile(
                title: Text('Bromine'),
              ),
              ListTile(
                title: Text('Iodine'),
              ),
              ListTile(
                title: Text('Backchodi'),
              ),
              ListTile(
                title: Text('Liberary'),
              ),
              ListTile(
                title: Text('Random'),
              ),
              ListTile(
                title: Text('Helu'),
              ),

            ],
          )

        ),
    );
  }
}

