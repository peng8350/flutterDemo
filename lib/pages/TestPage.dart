import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => new _TestPageState();
}

class _TestPageState extends State<TestPage> with TickerProviderStateMixin {
  final _controll = new ScrollController();
  AnimationController _controll2;

  @override
  Widget build(BuildContext context) {
    _controll2 = new AnimationController(
        vsync: this, value: 0.0, duration: const Duration(milliseconds: 1500));
    var pp = new RelativeRectTween(
      begin: new RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
      end: new RelativeRect.fromLTRB(0.0, 244.0, 0.0, 0.0),
    ).animate(new CurvedAnimation(
        parent: _controll2, curve: new Cubic(0.0, 0.0, 1.0, 1.0)));

    return new Page(
        title: "测试",
        body: new RotatedBox(
          quarterTurns: 9,
          child: const Text('Hello World!'),
        ));
  }
}
