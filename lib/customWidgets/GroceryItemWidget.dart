import 'package:flutter/material.dart';
import 'groceryItem.dart';

class GroceryWidget extends StatelessWidget {
  final Items item;
  GroceryWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Card(
            child: ListTile(tileColor: Colors.black12,
              leading: Image.asset("Assets/itemImages/${item.filename}.jpg", fit: BoxFit.fill,),
              //leading: Image.asset("Assets/itemImages/6.jpg", fit: BoxFit.fill,),
              title: Text(item.name),
              subtitle: Text(item.type),
            ),
          ),
        ]
    );
  }
}