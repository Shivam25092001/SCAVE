import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class GroceryModel {
  static List<Items> itm;
}




class Items {
  int id;
  String name;
  String DoM;
  String DoEx;
  String type;
  String description;
  String filename;

  Items({this.description, this.DoEx, this.DoM, this.filename, this.id, this.name, this.type});

 factory Items.fromMap(Map<dynamic,dynamic> map){
    return Items(
      id : map["id"],
      name: map["name"],
      DoM: map["DoM"],
      DoEx: map["DoEx"],
      type: map["type"],
      description: map["description"],
      filename: map["filename"],
    );
  }

  toMap() => {
    "id" : id,
    "name" : name,
    "DoM" : DoM,
    "DoEx" : DoEx,
    "type" : type,
    "description" : description,
    "filename" : filename,
  };

}

