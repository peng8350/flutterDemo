import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "../utils/SnackUtils.dart";
import "Page.dart";

class DialogPage extends StatelessWidget {
  _buildRow(int index, BuildContext context) {
    String text;
    var method;
    switch (index) {
      case 1:
        text = "IOS对话框";
        method = _showIOSDialog;
        break;
      case 2:
        text = "Android对话框";
        method = _showAndroidDialog;
        break;

      case 3:
        break;
    }
    return new GestureDetector(
      child: new Text(text),
      onTap: () {
        method(context);
      },
    );
  }

  //实现最原本IOS的对话框
  _showAndroidDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text('对话框'),
            content:new Text("内容内容"),
            actions: <Widget>[
              new CupertinoButton(
                  child: new Text('取消'),
                  onPressed: () {
                    //其实纠结了很久怎么关闭,要明白dialog也是个Activity
                    Navigator.pop(context);
                  }),
              new CupertinoButton(
                  child: new Text('确定'),
                  onPressed: () {
                    //其实纠结了很久怎么关闭,要明白dialog也是个Activity
                    Navigator.pop(context);
                  })
            ],
          );
        });
  }

  _showIOSDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new CupertinoAlertDialog(
            title: new Text('对话框'),
            content: new Text('你好这是一个IOS对话框'),
            actions: <Widget>[
              new CupertinoButton(
                  child: new Text('取消'),
                  onPressed: () {
                    //其实纠结了很久怎么关闭,要明白dialog也是个Activity
                    Navigator.pop(context);
                  }),
              new CupertinoButton(
                  child: new Text('确定'),
                  onPressed: () {
                    //其实纠结了很久怎么关闭,要明白dialog也是个Activity
                    Navigator.pop(context);
                  })
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
        title: "对话框",
        body: new ListView(
          itemExtent: 50.0,
          children: <Widget>[
            new ToastShower(),
            _buildRow(1, context),
            _buildRow(2, context)
          ],
        ));
  }
}

//没办法,这里其实完全没必要,因为不这样做,Context没办法获取那个东西,就无法显示Toast
class ToastShower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      child: new Text("we"),
      onTap: () {
        SnackUtils.show(context, "显示");
      },
    );
  }
}
