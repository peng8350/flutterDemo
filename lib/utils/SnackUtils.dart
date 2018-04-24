import "package:flutter/material.dart";

class SnackUtils{

  static show(BuildContext context,String content){
    Scaffold.of(context).showSnackBar(
      new SnackBar(content: new Text(content))
    );
  }
}