import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';

// ignore: camel_case_types
class homed extends StatefulWidget {
  @override
  _homedState createState() => _homedState();
}

class _homedState extends State<homed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white70),
        centerTitle: true,
        elevation: 70,
        backgroundColor: Colors.yellow[600],
        shadowColor: Colors.black,
        title: Text('SCAVE',
            style: TextStyle(
                fontFamily: 'GlacialIndifference',
                fontWeight: FontWeight.bold,
                color: Colors.white70
            )),
      ),
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                image: DecorationImage(
                  image: AssetImage("Assets/images/GettyImages-960874986.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.85), BlendMode.dstATop),
                )
              ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ListView(
              children: [
                SizedBox(width: 50,height: 50,),

                GestureDetector(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20.0),
                      backgroundBlendMode: BlendMode.hardLight,

                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Notifications", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(Icons.notifications,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){ Navigator.pushNamed(context, MyRoutes.notifyDataRoute); },
                ),
                SizedBox(width: 50,height: 30,),

                GestureDetector(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20.0),
                      backgroundBlendMode: BlendMode.hardLight,

                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Your Kitchen", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(Icons.kitchen_sharp,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){ Navigator.pushNamed(context, MyRoutes.notifyDataRoute); },
                ),
                SizedBox(width: 50,height: 30,),

                GestureDetector(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20.0),
                      backgroundBlendMode: BlendMode.hardLight,

                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Scave's Partners", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(Icons.store_outlined,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){ Navigator.pushNamed(context, MyRoutes.notifyDataRoute); },
                ),
                SizedBox(width: 50,height: 30,),

                GestureDetector(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20.0),
                      backgroundBlendMode: BlendMode.hardLight,

                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Donate", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0),
                          child: Icon(Icons.auto_awesome,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){ Navigator.pushNamed(context, MyRoutes.notifyDataRoute); },
                ),
                SizedBox(width: 50,height: 30,),

              ],
            ),
          )
        ],
      ),

    );
  }
}
