import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Page extends StatelessWidget{

  final Widget body,bottom,drawer,topTab;
  final String title;
  final List<Widget> right;

  Page({this.title,this.body,this.right,this.bottom,this.drawer,this.topTab});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        actions: this.right,
        bottom: topTab,
      ),
      drawer: this.drawer,
      bottomNavigationBar: this.bottom,
      body: this.body,



    );
  }

}