import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';

//说实在,flutter animation api封装得有点复杂
class AnimationPage extends StatefulWidget {
  @override
  _AnimationPageState createState() => new _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with TickerProviderStateMixin
{
  // ignore: mixin_declares_constructor

  double _rotateAngle = 0.0;
  double _Scale = 0.0;
  AnimationController controller,controller2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(value: _rotateAngle,duration: const Duration(milliseconds: 2000), vsync: this);
    controller2 = new AnimationController(value: _Scale
        ,duration: const Duration(milliseconds: 2000), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Page(
      title: "动画",
      body: new ListView(
        children: <Widget>[
          new RaisedButton(child: new Text('旋转'),onPressed: () {
            setState(() {
              controller.forward(from:0.5 );
            });

          }),
          new RotationTransition(

            turns: controller,
            child: new Text('旋转动画'),
           ),
          new RaisedButton(child: new Text('缩放'),onPressed: () {
            setState(() {
              controller2.forward(from:0.0 );
            });

          }),
          new ScaleTransition(alignment: Alignment.topLeft,scale: controller2,child: new Text('缩放动画'),)
        ],
      ),
    );
  }
}
