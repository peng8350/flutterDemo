import 'dart:async';

import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';
import "package:pull_to_refresh/pull_to_refresh.dart";

class RefreshPage extends StatefulWidget {
  @override
  _RefreshPageState createState() => new _RefreshPageState();
}

class _RefreshPageState extends State<RefreshPage> {
  
  RefreshMode refreshing=RefreshMode.idle,loading=RefreshMode.idle;

  List<String> _list=[];
  int index= 1;

  void add(){
    for(int i =0 ;i<10;i++){
      _list.add("data$i");
      index++;
    }

  }

  _onModeChange(isUp,mode){
    if(isUp){

      setState(() {
        refreshing=mode;
      });
      if(mode==RefreshMode.refreshing) {
        new Future<Null>.delayed(const Duration(milliseconds: 1000), () {
          setState(() {
            refreshing = RefreshMode.failed;
          });
        });
      }
    }
    else{
      setState(() {
        loading = mode;
      });
      if(mode==RefreshMode.refreshing) {
        new Future<Null>.delayed(const Duration(milliseconds: 1000), () {
          setState(() {
            add();
            loading = RefreshMode.completed;
          });
        });
      }
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    add();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return new Page(
      title: "下拉刷新 ",

      body:
      new SmartRefresher(
          onModeChange: _onModeChange,
          enablePullDownRefresh: true,
          onOffsetChange: (offset){
          },

          enablePullUpLoad: true,
          refreshMode: refreshing,
          loadMode: loading,
          child: new ListView.builder(shrinkWrap: true,physics: const NeverScrollableScrollPhysics(),itemBuilder: (context,index)=>new Center(child: new Text(_list[index])),itemCount: _list.length,itemExtent: 50.0,)
      )
    );
  }
}
