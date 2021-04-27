import 'package:flutter/material.dart';
import 'groceryItem.dart';

class GroceryWidget extends StatelessWidget {
  final Items item;
  GroceryWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
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
                    Container(child: Text("Category: ${item.type}", style: TextStyle(fontSize: 15.0),),width: 200,),
                    SizedBox(height: 10,width: 20,),
                    Container(child: Text("Stock: ${item.stock}", style: TextStyle(fontSize: 15.0),),width: 200,),
                  ],
                ),
              ),
            ),
            Column(
              children: [
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
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.0),
                    child: ElevatedButton(
                      child: Text("Reorder", style: TextStyle(color: Colors.grey[850]),),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(10.0),
                      ),
                    )
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}
