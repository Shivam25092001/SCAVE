import 'package:flutter/material.dart';
import 'groceryItem.dart';
import 'package:http/http.dart';

class GroceryWidget extends StatelessWidget {
  final Items item;
  GroceryWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Card(
            child: ListTile(
              leading: Image.network(item.filename),
              title: Text(item.name),
              subtitle: Text(item.DoEx),
            ),
          ),
        ]
    );
  }
}