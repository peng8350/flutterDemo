import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';

class ExpandableListPage extends StatefulWidget {
  @override
  _ExpandableListPageState createState() => new _ExpandableListPageState();
}

class _ExpandableListPageState extends State<ExpandableListPage> {
  Widget buildRow() {
    return new Container(
      child: new Text('内容'),
      width: double.INFINITY,
      alignment: Alignment.centerRight,

    );
  }

  Widget buildItem(BuildContext context, int index) {
    return new Container(
      decoration:new BoxDecoration(
        border: new Border(
        bottom: Divider.createBorderSide(context,
        color: Colors.green, width: 1.0))
      ),
        child: new ExpansionTile(

      title: new Text("标题$index"),
      children: <Widget>[buildRow(), buildRow(), buildRow()],
      leading: new Icon(Icons.add),
      initiallyExpanded: true,

      onExpansionChanged: (isExpand) {},
    ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Page(
        title: "二级列表展开",
        body: new ListView.builder(
          itemBuilder: buildItem,
          itemCount: 13,
        ));
  }
}
