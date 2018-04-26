import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


//
class InputPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _InputPageState();
  }
}

//如果你只是
class _InputPageState extends State<InputPage> {
  TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
      title: "输入框Demo",
      body: new Column(
        children: <Widget>[
          new TextFormField(
            validator: (val) {
              //不明白,这里一直没有办法回调,感觉是BUG
              print(val.endsWith("eee"));
              return  null;
            },
            controller: _controller,
            decoration: new InputDecoration(hintText: "输入你邮箱",errorText: "cip",
                icon: new Icon(Icons.email)),
            onFieldSubmitted: (str){
            },
          ),
          new TextField(
            decoration: new InputDecoration(hintText: "输入你邮箱",
            errorText: "错误",icon: new Icon(Icons.email)),
            onChanged: (val){
              //等同于上面的controller,只不过这个更方便
              print(val);
            },

            onSubmitted: (val){
              //按回车按钮回调的方法
              print(val);
            },

          )
        ],
      )
    );
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    //添加监听器来添加输入的变化
    this._controller = new TextEditingController();
    this._controller.addListener((){
      //print(this._controller.text);
    });
  }
}
