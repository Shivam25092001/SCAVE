import 'package:flutter/material.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff0000),
        title: Text('SCAVE',
            style: TextStyle(
                fontFamily: 'GlacialIndifference',
                fontWeight: FontWeight.bold)),
      ),
      body: Stack(
          children: [


            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text("I am good here"),
                )),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                primary: false,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset.zero,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 0.0),
                      width: 181.0,
                      height: 200.0,
                      child: Text("Upcoming Notifications", textAlign: TextAlign.center,),
                      decoration: BoxDecoration(
                        color: const Color(0xffffcc00),
                        border: Border.all(width: 1.0, color: const Color(0xffcc00)),
                        image: DecorationImage(
                            image: AssetImage("Assets/images/Full_SCAVE.jpg"),
                            fit: BoxFit.contain,
                            alignment: Alignment.bottomCenter,
                        )
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.zero,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 0.0),
                      child: Text("Your Kitchen", textAlign: TextAlign.center,),
                      width: 181.0,
                      height: 284.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffcc00),
                        border: Border.all(width: 1.0, color: const Color(0xffFFCC00)),
                          image: DecorationImage(
                            image: AssetImage("Assets/images/Full_SCAVE.jpg"),
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.bottomCenter,
                          )
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.zero,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 0.0),
                      child: Text("Donate", textAlign: TextAlign.center,),
                      width: 181.0,
                      height: 284.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffcc00),
                        border: Border.all(width: 1.0, color: const Color(0xffffcc00)),
                          image: DecorationImage(
                            image: AssetImage("Assets/images/Full_SCAVE.jpg"),
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.bottomCenter,
                          )
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.zero,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16.0,horizontal: 0.0),
                      child: Text("Scave's Partners", textAlign: TextAlign.center,),
                      width: 181.0,
                      height: 284.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffcc00),
                        border: Border.all(width: 1.0, color: const Color(0xffffcc00)),
                          image: DecorationImage(
                            image: AssetImage("Assets/images/Full_SCAVE.jpg"),
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.bottomCenter,
                          )
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset.zero,
                    child: Container(
                      width: 500.0,
                      height: 144.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffffcc00),
                        border: Border.all(width: 1.0, color: const Color(0xffcc00)),
                          image: DecorationImage(
                            image: AssetImage("Assets/images/ESA_root_pillars.jpg"),
                            fit: BoxFit.fill,
                            alignment: Alignment.bottomCenter,
                          )
                      ),
                    ),
                  ),

                ],

              ),
            )
          ]
      ),
    );
  }
}
