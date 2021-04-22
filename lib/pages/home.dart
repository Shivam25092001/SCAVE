import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';

// ignore: camel_case_types
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white70),
        centerTitle: true,
        elevation: 10,
        backgroundColor: const Color(0xff000000),
        shadowColor: Colors.black,
        title: Text('SCAVE',
            style: TextStyle(
                fontFamily: 'GlacialIndifference',
                fontWeight: FontWeight.bold,
              color: Colors.white70
            )),
      ),
      body: Container(
        //color: Colors.blueGrey[200],
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end : Alignment.bottomCenter,
            colors: [
              //Color(0x9affcc00),
              Colors.black,
              Colors.black54
            ]
          )
        ),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0.0,
                  crossAxisSpacing: 10.0,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, MyRoutes.notifyDataRoute);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right:0.0, left: 8.0,top:25.0,bottom: 0.0),
                        child: Container(height: 50,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Color(0xffffcc00),
                                border: Border.all(color: Color(0xffffcc00), width: 2.0),
                                borderRadius: BorderRadius.circular(5.0),

                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5.5,
                                    offset: Offset.fromDirection(180.0),
                                  )
                                ]

                              ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridTile(
                                child: Transform.scale(child: Icon(Icons.notifications_on,color: Colors.white,),scale: 3.0,),

                                footer: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("Upcoming Notifications", style: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.bold, fontSize: 20.0),),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, MyRoutes.yourKitchenRoute);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right:8.0, left: 0.0,top:25.0,bottom: 0.0),
                        child: Container(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color(0xffffcc00),
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 5.5,
                                    offset: Offset.fromDirection(180.0),
                                  )
                                ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GridTile(
                                  child: Transform.scale(child: Icon(Icons.kitchen,color: Colors.white,),scale: 3.0,),
                                  footer: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text("Your Kitchen", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)),
                                  ),
                                ),
                              ),
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:0.0, left: 8.0,top:10.0,bottom: 0.0),
                      child: Container(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xffffcc00),
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5.5,
                                  offset: Offset.fromDirection(180.0),
                                )
                              ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridTile(
                                child: Transform.scale(child: Icon(Icons.auto_awesome,color: Colors.white,),scale: 3.0,),
                                footer: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("Donate", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)),
                                ),
                              ),
                            ),
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right:8.0, left: 0.0,top:10.0,bottom: 0.0),
                      child: Container(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xffffcc00),
                              borderRadius: BorderRadius.circular(5.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 5.5,
                                  offset: Offset.fromDirection(180.0),
                                )
                              ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GridTile(
                                child: Transform.scale(child: Icon(Icons.store_mall_directory,color: Colors.white,),scale: 3.0,),
                                footer: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text("Scave's Partners", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)),
                                ),
                              ),
                            ),
                          )
                      ),
                    ),

                  ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                  height: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Color(0xffffcc00),
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 5.5,
                            offset: Offset.fromDirection(180.0),
                          )
                        ]

                    ),
                    child: Center(
                      child: Text("Contact Us", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0)),
                    ),
                  )
              ),
            )
          ],
        ),
      ),

    );
  }
}
