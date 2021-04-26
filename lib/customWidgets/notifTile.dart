import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'groceryItem.dart';
import 'package:intl/intl.dart';

class NotifyTileWidget extends StatelessWidget {
  final Items item;
  NotifyTileWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.all(10.0),
      child: Material(
        color: Colors.grey[300],
        elevation: 10.0,
        borderRadius: BorderRadius.circular(10.0),
        shadowColor: Colors.grey[600],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10,width: 20,),
                    Container(child: Text("${item.name}", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w900),), width: 200,),
                    SizedBox(height: 10,width: 20,),
                    Container(child: Text("Exprires on:  ${item.DoEx}", style: TextStyle(fontSize: 15.0),),width: 200,),
                  ],
                ),
              ),
            ),
            Container(
              width: 80,
              height: 80,
              child: ClipRect(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Image(
                    fit: BoxFit.contain,
                    image: AssetImage("Assets/itemImages/${item.filename}.jpg"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/*
Card(
child: ListTile(tileColor: Colors.black12,
leading: Padding(
padding: const EdgeInsets.all(2.0),
child: Image.asset("Assets/itemImages/${item.filename}.jpg", fit: BoxFit.fill,),
),
//leading: Image.asset("Assets/itemImages/6.jpg", fit: BoxFit.fill,),
trailing: Padding(
padding: const EdgeInsets.all(8.0),
child: Text(item.DoEx),
),
subtitle: Padding(
padding: const EdgeInsets.all(8.0),
child: Text(item.name),
),
),
),
Text("fuck"),*/
