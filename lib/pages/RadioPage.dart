import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';


class RadioPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RadioState();
  }

}

class RadioState extends State<RadioPage>{

  int selectRadio= 0;
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
      title: "单选 +多选",
      body: new ListView(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Radio(value: 0, groupValue: this.selectRadio, onChanged: (val){
                this.setState((){
                  this.selectRadio = val;
                });
              }),
              new Text('选项1'),
              new Radio(value: 1, groupValue: this.selectRadio, onChanged: (val){
                this.setState((){
                  this.selectRadio = val;
                });
              }),
              new Text('选项2'),
              new Radio(value: 2, groupValue: this.selectRadio, onChanged: (val){
                this.setState((){
                  this.selectRadio = val;
                });
              }),
              new Text('选项3'),
              new Radio(value: 3, groupValue: this.selectRadio, onChanged: (val){
                this.setState((){
                  this.selectRadio = val;
                });
              }),
              new Text('选项4'),
            ],
          ),
          new Row(
            children: <Widget>[
              new Checkbox(value: this.checkValue, onChanged: (val){
                this.setState((){
                  this.checkValue=val;
                });
              }),
              new Text('多选')
            ],
          )
        ],

      ),
    );
  }
}