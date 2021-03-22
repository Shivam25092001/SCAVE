import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
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

        );
  }
}
