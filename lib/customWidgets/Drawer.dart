import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:flutter_app/pages/login_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String dpUrl = "Assets/images/circle-cropped.png";

    return Drawer(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      const Color(0xaaFFCC00),
                      const Color(0x00ffffcc00)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.clamp,

                  )
              ),

              //decoration: BoxDecoration(color: Color(0xffFFCC00)),
                child: ListView(


                  children: [
                    //Divider(height: 0.0,thickness: 8.5,indent: 0.0,color: Color(0xffFFCC00),endIndent: 0.0,),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 32, 16.0, 8.0),
                            child: Container(
                              decoration: BoxDecoration(color: Color(0x00ffcc00)),
                              child: Container(
                                width: 135,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(width:3.0, color: Colors.white70),
                                  ),
                                  child: Image.asset(dpUrl,scale: 0.1,fit: BoxFit.cover,)
                              ),
                            ),
                          ),
                          Container(
                            child: Text("Namaste $username !", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            child: Text("+1-9936887", style: TextStyle(color: Colors.white, fontSize: 15)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          /*UserAccountsDrawerHeader(
                            accountName: Text("Namaste $username !", style: TextStyle(color: Colors.white, fontSize: 25)),
                            accountEmail: Text("+1-9936887", style: TextStyle(color: Colors.white, fontSize: 15)),
                            currentAccountPicture: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(width:3.0, color: Colors.white70)
                              ),
                                child: Image.asset(dpUrl,scale: 1.0,fit: BoxFit.cover,),
                            ),
                            decoration: BoxDecoration(color: Color(0x00ffcc00)),
                          ),*/
                        ],
                      ),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.perm_identity_outlined,
                        color: Colors.white,
                      ),
                      title: Text('Account Details', style: TextStyle(fontSize: 20, color: Colors.white70),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, MyRoutes.yourKitchenRoute);
                      },
                      child: ListTile(
                          leading: Icon(
                            Icons.kitchen_sharp,
                            color: Colors.white,
                            //size: 1,
                          ),
                          title: Text('Items in Kitchen', style: TextStyle(fontSize: 20, color: Colors.white70),),
                  ),
                    ),

                    ListTile(
                      leading: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                      title: Text('Scan', style: TextStyle(fontSize: 20, color: Colors.white70),),
                    ),

                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacementNamed(context, MyRoutes.notifyDataRoute);
                      },
                      child: ListTile(
                          leading: Icon(
                            Icons.notifications_on,
                            color: Colors.white
                          ),
                          title: Text('Upcoming notifications', style: TextStyle(fontSize: 20, color: Colors.white70),),
                  ),
                    ),

                    ListTile(
                        leading: Icon(
                          Icons.auto_awesome,
                          color: Colors.white,
                        ),
                        title: Text('Donate', style: TextStyle(fontSize: 20, color: Colors.white70),),
                  ),

                    ListTile(
                       leading: Icon(
                        Icons.store_mall_directory,
                        color: Colors.white,
                      ),
                       title: Text('Our Partners', style: TextStyle(fontSize: 20, color: Colors.white70),),
                    ),

                    ListTile(
                        leading: Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        title: Text('Contact Us', style: TextStyle(fontSize: 20, color: Colors.white70),),
                  ),
                ],
              ),
            )
        );
  }
}
