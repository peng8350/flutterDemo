import 'package:flutter/cupertino.dart';

class SimplePage extends StatelessWidget{

  String title;

  SimplePage({this.title:"yye"});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text(this.title);
  }

}