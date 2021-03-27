import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_page.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String dpUrl = "https://lh6.googleusercontent.com/-cIcbyvUfCzY/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckwNpHGS5Bi-bC2FzaabV7iOSsaHA/s96-c-rg-br100/photo.jpg";

    return Drawer(
            child: Container(
               // decoration: BoxDecoration(color: Color(0xffFFCC00)),
                child: ListView(

                  children: [

                     DrawerHeader(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(color: Color(0xffFFCC00)),


                        child: UserAccountsDrawerHeader(
                            accountName: Text("$username",style: TextStyle(color: Colors.black)),
                            accountEmail: Text("ss056989@gmail.com"),
                            currentAccountPicture: Image.network(dpUrl,scale: 0.8,),
                          decoration: BoxDecoration(color: Color(0xffFFCC00)),
                        ),


                  ),
                      ListTile(
                        leading: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        title: Text('Scan'),
                  ),
                      ListTile(
                        leading: Icon(
                          Icons.view_list,
                          color: Colors.black,
                        ),
                        title: Text('Last shopping list'),
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
                          Icons.person,
                          color: Colors.black,
                        ),
                        title: Text('Donate'),
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
