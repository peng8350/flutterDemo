import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";


class RefreshPage extends StatefulWidget {
  @override
  _RefreshPageState createState() => new _RefreshPageState();
}

class _RefreshPageState extends State<RefreshPage> {
  
  bool refreshing=false,loading=false;
  @override
  Widget build(BuildContext context) {
    return new Page(
      title: "下拉刷新 ",

      body: new SmartRefresher(
        onRefresh: (){
          print("qqq");
          setState(() {
            refreshing = true;
          });
        },
          refreshing: this.refreshing,
          child: new Container(height: 1050.0)
      )
    );
  }
}
