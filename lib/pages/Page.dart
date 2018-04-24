import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page extends StatelessWidget{

  Widget body,right,bottom;
  String title;

  Page({this.title,this.body,this.right,this.bottom});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new CupertinoNavigationBar(
        middle: new Text(title),
        trailing: this.right,
      ),

      bottomNavigationBar: this.bottom,
      body: this.body,



    );
  }

}