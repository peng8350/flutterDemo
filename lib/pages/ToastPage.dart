import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ToastPage extends StatelessWidget{

  final MethodChannel channel = const MethodChannel("com.jpeng.demo/toast");

  void show(){
    channel.invokeMethod("showToast",{'time':0,'msg':"好了!!"});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
        title: '图片Icon',
        body:new RaisedButton(onPressed: (){
          //show toast
          show();
        },child: new Text('弹出Toast'),)
    );
  }
}