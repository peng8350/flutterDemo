import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page extends StatelessWidget{

  Widget body,right;
  String title;

  Page({this.title,this.body,this.right});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new CupertinoNavigationBar(
        middle: new Text(title),
        trailing: this.right,
      ),
      body: this.body,

    );
  }

}