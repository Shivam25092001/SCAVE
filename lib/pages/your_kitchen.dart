import 'package:flutter/material.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';
import 'package:flutter_app/Utils/Routes.dart';

class yourKitchen extends StatefulWidget {
  @override
  _yourKitchenState createState() => _yourKitchenState();
}

class _yourKitchenState extends State<yourKitchen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          drawer: AppDrawer(),
          appBar: AppBar(
            centerTitle: true,
            elevation: 10,
            backgroundColor: const Color(0xffFFCC00),
            shadowColor: Colors.black,
            title: Text('SCAVE',
                style: TextStyle(
                    fontFamily: 'GlacialIndifference',
                    fontWeight: FontWeight.bold)),
          ),
      ),
    );
  }
}
