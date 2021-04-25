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
        iconTheme: IconThemeData(color: Color(0xffffcc00)),
        centerTitle: true,
        elevation: 70,
        //backgroundColor: Colors.yellow[600],
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text('S C A V E',
              style: TextStyle(
                  fontFamily: 'GlacialIndifference',
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xffffcc00)
              )
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                color: Colors.white,
                /*image: DecorationImage(
                  image: AssetImage("Assets/images/GettyImages-960874986.jpg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.89), BlendMode.dstATop),
                )*/
              ),
          ),
          Positioned(
              child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Image.asset("Assets/images/bg.jpg",fit: BoxFit.fitWidth,),
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: ListView(
              children: [
                SizedBox(width: 50,height: 50,),

                GestureDetector(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("Assets/images/GettyImages-960874986.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.89), BlendMode.dstATop),
                        ),

                      shape: BoxShape.rectangle,
                      color: Color(0xff9c5ac2),
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(5,1),
                          blurRadius: 5.0
                        )
                      ]
                      //backgroundBlendMode: BlendMode.hardLight,
                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: Text("Notifications", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 20.0),
                          child: Icon(Icons.notifications,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){ Navigator.pushNamed(context, MyRoutes.notifyDataRoute); },
                ),
                SizedBox(width: 50,height: 20,),

                GestureDetector(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xff17b4af),
                      borderRadius: BorderRadius.circular(20.0),
                      //backgroundBlendMode: BlendMode.hardLight,

                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: Text("Your Kitchen", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 20.0),
                          child: Icon(Icons.kitchen_sharp,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){ Navigator.pushNamed(context, MyRoutes.yourKitchenRoute); },
                ),
                SizedBox(width: 50,height: 20,),

                GestureDetector(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xff66aa40),
                      borderRadius: BorderRadius.circular(20.0),
                      //backgroundBlendMode: BlendMode.hardLight,

                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: Text("Scave's Partners", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 20.0),
                          child: Icon(Icons.store_outlined,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){ Navigator.pushNamed(context, MyRoutes.notifyDataRoute); },
                ),
                SizedBox(width: 50,height: 20,),

                GestureDetector(
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Color(0xffbb900c),
                      borderRadius: BorderRadius.circular(20.0),
                      //backgroundBlendMode: BlendMode.hardLight,

                    ),
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: Text("Donate", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18.0, right: 20.0),
                          child: Icon(Icons.auto_awesome,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){ Navigator.pushNamed(context, MyRoutes.notifyDataRoute); },
                ),
                SizedBox(width: 50,height: 20,),

              ],
            ),
          ),

        ],
      ),

    );
  }
}
