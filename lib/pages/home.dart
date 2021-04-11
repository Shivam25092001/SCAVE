import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
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
        title: Text('SCAVE',
            style: TextStyle(
                fontFamily: 'GlacialIndifference',
                fontWeight: FontWeight.bold)),
      ),
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 0.0,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffffcc00),
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                  child: Center(
                    child: Text("Hello1"),
                  ),
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffffcc00),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.5,
                      ),]
                    ),
                    child: Center(
                      child: Text("Hello2"),
                    ),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffffcc00),
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    child: Center(
                      child: Text("Hello3"),
                    ),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffffcc00),
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    child: Center(
                      child: Text("Hello3"),
                    ),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffffcc00),
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    child: Center(
                      child: Text("Hello3"),
                    ),
                  )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xffffcc00),
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    child: Center(
                      child: Text("Hello3"),
                    ),
                  )
              ),
            ),
          ],
      ),

    );
  }
}
