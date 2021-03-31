import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String dpUrl = "https://lh6.googleusercontent.com/-cIcbyvUfCzY/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckwNpHGS5Bi-bC2FzaabV7iOSsaHA/s96-c-rg-br100/photo.jpg";

    return Drawer(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      const Color(0xffFFCC00),
                      const Color(0xffffffff)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    tileMode: TileMode.clamp,

                  )
              ),

              //decoration: BoxDecoration(color: Color(0xffFFCC00)),
                child: ListView(


                  children: [

                    DrawerHeader(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(color: Color(0xffFFCC00),
                            gradient: LinearGradient(
                              colors: <Color>[
                                const Color(0xffFFCC00),
                                const Color(0xffffffff)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              tileMode: TileMode.clamp,

                            )
                        ),



                        child: UserAccountsDrawerHeader(
                            accountName: Text("$username",style: TextStyle(color: Colors.black)),
                            accountEmail: Text("ss056989@gmail.com"),
                            currentAccountPicture: Image.network(dpUrl,scale: 0.8,),
                          decoration: BoxDecoration(color: Color(0xffFFCC00)),
                        ),

                  ),
                    Divider(height: 0.0,thickness: 8.5,indent: 0.0,color: Color(0xffFFCC00),endIndent: 0.0,),

                    ListTile(
                        leading: Icon(
                          Icons.kitchen_sharp,
                          color: Colors.black,
                        ),
                        title: Text('Items in Kitchen'),
                  ),

                    ListTile(
                      leading: Icon(
                        Icons.qr_code,
                        color: Colors.black,
                      ),
                      title: Text('Scan'),
                    ),

                    ListTile(
                        leading: Icon(
                          Icons.notifications_on,
                          color: Colors.black,
                        ),
                        title: Text('Upcoming notifications'),
                  ),

                    ListTile(
                        leading: Icon(
                          Icons.auto_awesome,
                          color: Colors.black,
                        ),
                        title: Text('Donate'),
                  ),

                    ListTile(
                       leading: Icon(
                        Icons.store_mall_directory,
                        color: Colors.black,
                      ),
                       title: Text('Our Partners'),
                    ),

                    ListTile(
                        leading: Icon(
                          Icons.mail,
                          color: Colors.black,
                        ),
                        title: Text('Contact Us'),
                  ),
                ],
              ),
            )

        );
  }
}
