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

/*
注意,如果想验证EditText,autovalidate这个选项一定要打开,
一开始我以为这个autovalidate是自动帮我验证的意思(我的想法太天真了),
如果不开这个,validator没办法回调的
 */
class _InputPageState extends State<InputPage> {
  TextEditingController _controller;

  String _validateName(String value) {
    print("qq");
    if(value.endsWith("eeee"))return "错";
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
        title: "输入框Demo",
        body:
        new Column(
          children: <Widget>[
            new TextFormField(
              autovalidate: true,
              validator: _validateName,
              decoration: new InputDecoration(
                  hintText: "输入你邮箱",
                  icon: new Icon(Icons.email)),
              onFieldSubmitted: (str) {},
            ),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "输入你邮箱",
                  errorText: "错误",
                  icon: new Icon(Icons.email)),
              onChanged: (val) {
                //等同于上面的controller,只不过这个更方便
                print(val);
              },
              onSubmitted: (val) {
                //按回车按钮回调的方法
                print(val);
              },
            )
          ],
        ));
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    //添加监听器来添加输入的变化
    this._controller = new TextEditingController();
    this._controller.addListener(() {
      //print(this._controller.text);
    });
  }
}
