import 'package:flutter/material.dart';
import 'groceryItem.dart';

class GroceryWidget extends StatelessWidget {

  final Items item;

  GroceryWidget({Key key, this.item}) : assert(item != null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text(item.filename),
        title: Text(item.name),
        subtitle: Text(item.type),

      ),
    );
  }
}