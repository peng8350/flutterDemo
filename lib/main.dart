import 'package:fluterdemo/pages/DrawerPage.dart';
import 'package:fluterdemo/pages/HttpPage.dart';
import 'package:fluterdemo/pages/ImagePage.dart';
import 'package:fluterdemo/pages/RadioPage.dart';
import 'package:fluterdemo/pages/TabPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import "pages/DialogPage.dart";
import "pages/ListPage.dart";

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: const Color.fromARGB(255, 255, 255, 255),
      home: new MyHomePage(title: 'Demo'),
      theme: new ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.black,
      ),
      routes: {
        // register your activity
        "list": (BuildContext context) => new ListPage(),
        "dialog": (BuildContext context) => new DialogPage(),
        "tab": (BuildContext context) => new TabPage(),
        "drawer": (BuildContext context) => new DrawerPage(),
        "radio": (BuildContext context) => new RadioPage(),
        "image":(BuildContext context) => new ImagePage(),
        "http": (BuildContext context) => new HttpPage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  final List dataList = const [
    {'title': "实现ListView添加删除更新操作", 'navigate': 'list'},
    {'title': "对话框", 'navigate': 'dialog'},
    {'title': "Tab底部导航", 'navigate': 'tab'},
    {'title': "Drawer+顶部Tab导航", 'navigate': 'drawer'},
    {'title': "单选+多选", 'navigate': 'radio'},
    {'title': "图片", 'navigate': 'image'},
    {'title': "网络", 'navigate': 'http'}
  ];

  Widget getView(BuildContext context, int index) =>
        new InkResponse(
            child: new Container(
              height: 100.0,
              alignment: Alignment.center,
              child: new Text(dataList[index]['title']),
            ),
            highlightColor: Colors.grey,
            enableFeedback: true,
            highlightShape: BoxShape.rectangle,
            onTap: () {
            Navigator.of(context).pushNamed(dataList[index]['navigate']);
            },
        ) ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
        appBar: new CupertinoNavigationBar(
          middle: new Text(title),
        ),
        body: new GridView.builder(
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: getView,
            itemCount: dataList.length));
  }
}
