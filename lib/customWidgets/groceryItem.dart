import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';


class GroceryModel {
  static List<Items> itm;
  static List<Items> sortedItm;
}


class Items {
  String id;
  String name;
  String DoM;
  String DoEx;
  String type;
  String description;
  String filename;
  //String brand;
  //double price;
  //String stock;

  Items({this.description, this.DoEx, this.DoM, this.filename, this.id, this.name, this.type});

  // Mapping below =====================================================================================================================================================
 factory Items.fromMap(Map<dynamic,dynamic> map) {
    return Items(
      id : map["_id"],
      name: map["name"],
      DoM: map["DoM"],
      DoEx: map["DoEx"],
      type: map["type"],
      description: map["description"],
      filename: map["filename"],
      //brand: map["brand"],
      //price: map["price"],
      //stock: map["stock"],
    );
  }

  toMap() => {
    "_id" : id,
    "name" : name,
    "DoM" : DoM,
    "DoEx" : DoEx,
    "type" : type,
    "description" : description,
    "filename" : filename,
    //"brand" : brand,
    //"price" : price,
    //"stock" : stock,
  };
  // Mapping above =====================================================================================================================================================

}

