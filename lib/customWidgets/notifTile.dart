import 'package:flutter/material.dart';
import 'groceryItem.dart';

class NotifyTileWidget extends StatelessWidget {
  final Items item;
  NotifyTileWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
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
        ]
    );
  }
}