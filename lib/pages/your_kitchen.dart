import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/customWidgets/Drawer.dart';
import 'package:flutter_app/customWidgets/GroceryItemWidget.dart';
import 'package:flutter_app/customWidgets/groceryItem.dart';
import 'dart:convert';

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

  void loadData() async{
    await Future.delayed(Duration(seconds: 2));
    var lJson = await rootBundle.loadString("Assets/files/items2.json" );
    var decodedData = jsonDecode(lJson);
    //print(decodedData);
    //print("hello");
    var itemData = decodedData["items"];
    //print(itemData);
    GroceryModel.itm = List.from(itemData).map<Items> ((item) => Items.fromMap(item)).toList();
    //GroceryModel.itm.forEach((element) {print(element);});
    //print("Hello!" + "${GroceryModel.itm.length}");
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
          child: ( GroceryModel.itm==null) ?
              Center(
                child: CircularProgressIndicator(),
              )
              :ListView.builder(
              itemCount: GroceryModel.itm.length,
              itemBuilder: (context, int) {
                return GroceryWidget(
                  item: GroceryModel.itm[int],
                );
              }
          ),
        ),
      ),
    );
  }
}
