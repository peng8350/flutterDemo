import 'dart:async';

import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';



class IndictorPage extends StatefulWidget {
  @override
  _IndictorPageState createState() => new _IndictorPageState();
}

class _IndictorPageState extends State<IndictorPage> {
  @override
  Widget build(BuildContext context) {
    return new Page(
      title: "指示器测试",
      body: new RefreshIndicator(
          child: new ListView(
        children: <Widget>[new Text('sdsd'),new Text('qqq'),new Text('sdsd'),new Text('qqq'),new Text('sdsd'),new Text('qqq'),new Text('sdsd'),new Text('qqq'),
        new Text('sdsd'),new Text('qqq'),new Text('sdsd'),new Text('qqq')],
        physics: const ClampingScrollPhysics(),
        itemExtent: 50.0,
      ),onRefresh: (){
        return new Future.delayed(const Duration(milliseconds: 2000));
      }),
    );
  }
}
