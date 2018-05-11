import 'package:residemenu/residemenu.dart';
import 'package:flutter/material.dart';
import 'Page.dart';


class ResideMenuPage extends StatefulWidget {
  @override
  _ResideMenuPageState createState() => new _ResideMenuPageState();
}

class _ResideMenuPageState extends State<ResideMenuPage> {
  @override
  Widget build(BuildContext context) {
    return new ResideMenu(child: new Page(
      body: new Center(
        child: new Text('内容页面'),
      ),
      title: 'resideMenu',
    ),decoration: new BoxDecoration(color: Colors.grey),
    );
  }
}
