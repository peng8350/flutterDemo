import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/cupertino.dart';


class MyFlowDelegate extends FlowDelegate{

  double nowWidth =0.0;
  double nowHeight =0.0;
  @override
  void paintChildren(FlowPaintingContext context) {
    // TODO: implement paintChildren

    for(int i = 0;i<context.childCount;i++){

      print(context.getChildSize(i).width);
      context.paintChild(i,transform: new Matrix4.translationValues(nowWidth+10.0, nowHeight,0.0));

      nowWidth+=context.getChildSize(i).width+20.0;
      //这里假设是屏幕宽度是400,因为那个如何获取组件宽度API不清楚

      if(nowWidth>300.0){
        nowWidth =0.0;
        nowHeight+=context.getChildSize(i).height;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }



}

class FlowPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
      title: "流水测试",
      body:
      new Flow(
        delegate: new MyFlowDelegate(),
        children: <Widget>[
          new Text('流水流水'), new Text('流水流水'),
          new Text('流水流水流水流水流水流水'), new Text('流水流水流水流水流水流水'), new Text('流水流水'),
          new Text('流水流水流水流水流水流水'), new Text('流水流水'),
          new Text('流水流水流水流水'), new Text('流水流水流水流水'),
          new Text('流水流水'), new Text('流水流水流水流水'), new Text('流水流水流水流水')
        ],
      )
    );
  }


}