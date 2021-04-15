import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';
import 'package:flutter_app/customWidgets/groceryItem.dart';
import 'package:flutter_app/Utils/Routes.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_app/customWidgets/groceryItem.dart';

class yourKitchen extends StatefulWidget {
  @override
  _yourKitchenState createState() => _yourKitchenState();
}


class _yourKitchenState extends State<yourKitchen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  var q;
  void loadData() async{
    var lJson = await rootBundle.loadString("Assets/files/items.json" );
    var decodedData = jsonDecode(lJson);
    var itemData = decodedData["items"];
    GroceryModel.itm = List.from(itemData).map<Items>((item) => Items.fromMap(item)).toList();
    setState(() {});
  }


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
            title: Text('Your Kitchen',
                style: TextStyle(
                    fontFamily: 'GlacialIndifference',
                    fontWeight: FontWeight.bold)),
          ),
        body: Container(
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
          child: ListView.builder(
              itemCount: GroceryModel.itm.length,
              itemBuilder: (context, index) {
                return GroceryWidget(
                item: GroceryModel.itm[index],
              );
              }
          ),
        ),
      ),
    );
  }
}
