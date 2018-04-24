import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Page.dart';

class ListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListState();
  }
}

class ListState extends State<ListPage> {
  List data = [];

  _init() {
    for (int i = 0; i < 100; i++) {
      data.add({'title':"数据",'subTitle':"附加数据"});
    }
  }

  _add() {
    this.setState(() {
      data.add({'title':"添加上的数据",'subTitle':"附加数据"});
    });
  }

  _delete(){
    this.setState((){
      data.removeLast();
    });
  }

  _update(){
    this.setState((){
      data[data.length-1]["title"] ="修改过后";
    });
  }

  Widget buildView(BuildContext context, int index) {
    return new ListTile(
      title: new Text(data[index]["title"]),
      subtitle: new Text(data[index]["subTitle"]),
      leading: new Image.network(
          "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1525161026&di=5f5280bb3c1585e3da6042f973337f60&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.taopic.com%2Fuploads%2Fallimg%2F120727%2F201995-120HG1030762.jpg"),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
        title: 'listView',
        body: new ListView.builder(
          itemBuilder: buildView,
          itemCount: data.length,
        ),
        right: new Container(
          width: 120.0,
          child: new Row(
              children: <Widget>[
                new GestureDetector(
                  child: new Text('添加'),
                  onTap: _add,
                ),
                new GestureDetector(
                  child: new Text('修改'),
                  onTap: _update,
                ),
                new GestureDetector(
                  child: new Text('删除'),
                  onTap: _delete,
                )
              ]
          )
          ),
        )
    ;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _init();
  }
}
