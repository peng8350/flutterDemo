import 'package:fluterdemo/pages/Page.dart';
import 'package:fluterdemo/pages/SimplePage.dart';
import 'package:flutter/material.dart';


class DrawerPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new DrawerState();
  }

}

class DrawerState extends State<DrawerPage> with SingleTickerProviderStateMixin{
  final List<Widget> views = [new SimplePage(title: "页面1"),new SimplePage(title:"页面2")];

  Widget buildMenuRow(String text) =>
      new InkResponse(highlightColor: Colors.grey,child:new ListTile(title: new Text('text'),onTap: (){
        print("点击了");
      }));

  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new Page(
      title: "抽屉+Tab",
      topTab: new  TabBar(tabs: <Widget>[new Tab(text:'tab1'),new Tab(text:'tab2')],
        controller: _controller,labelStyle: new TextStyle(color:Colors.blue),
      ),
      drawer: new Drawer(
          elevation: 15.0,
          child: new ListView(

          children: <Widget>[
        buildMenuRow("菜单一"),buildMenuRow("菜单2"),buildMenuRow("菜单3"),buildMenuRow("菜单4")
      ])),
      body: new TabBarView(children: views,controller: _controller),

    );
  }
}