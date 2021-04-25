import 'package:flutter/material.dart';
import 'groceryItem.dart';

class NotifyTileWidget extends StatelessWidget {
  final Items item;
  NotifyTileWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            SizedBox(height: 30, width: 50,),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width - 30.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFFCE36E),
                boxShadow: [
                  BoxShadow(color: Colors.black, offset: Offset(6,2), blurRadius: 8.0)
                ],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Stack(
                children: [
                  Container(

                    height: 80,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [

                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(item.name),
                            )),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("Assets/itemImages/1.jpg")
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
        ]
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
