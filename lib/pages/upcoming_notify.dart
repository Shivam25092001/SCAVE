import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';
import 'package:flutter_app/customWidgets/GroceryItemWidget.dart';
import 'package:flutter_app/customWidgets/groceryItem.dart';
import 'package:flutter_app/customWidgets/notifTile.dart';
import 'package:intl/intl.dart';

class notifyData extends StatefulWidget {
  @override
  _notifyDataState createState() => _notifyDataState();
}



class _notifyDataState extends State<notifyData> {

  @override
  void initState() {
    super.initState();
    print("Hello4");
    loadsorteddata();
  }

  List<Items> items = [];

  void loadsorteddata() async{
    //print("Hello2");
    var initData = await rootBundle.loadString("Assets/files/items2.json");
    var decodeData = jsonDecode(initData);
    var itemData = decodeData["items"];

    GroceryModel.sortedItm = List.from(itemData).map<Items> ((item) => Items.fromMap(item)).toList();
    GroceryModel.sortedItm.sort((Items a, Items b) {
      var datea = (a.DoEx);
      var dateb = (b.DoEx);
      return datea.compareTo(dateb);
    });
    setState(() {});
    //GroceryModel.sortedItm.forEach((element) {print(element.DoEx);});
    //print(itemData);
    //print(initData + "Hello3");
  }

  @override
  Widget build(BuildContext context) {

    //print("Hello1");
    return Material(
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white70,
          ),
          centerTitle: true,
          elevation: 60,
          backgroundColor: Colors.purple,
          shadowColor: Colors.black,
          title: Text('Upcoming Notifications',
              style: TextStyle(
                  fontFamily: 'GlacialIndifference',
                  color: Colors.white70,
                  fontWeight: FontWeight.bold)),
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          child: ListView.builder(
              itemCount: GroceryModel.sortedItm.length,
              itemBuilder: (context, index) {
                return NotifyTileWidget(
                  item: GroceryModel.sortedItm[index],
                );
              },
          ),
        ),
      ),
    );
  }
}
