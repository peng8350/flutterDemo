import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';


class ImagePage extends StatelessWidget{
  
  Widget buildFadeIn(){
    return new FadeInImage.assetNetwork(placeholder: 'images/empty.png', image: "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1764294179,2550422182&fm=27&gp=0.jpg");
  }
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
      title: '图片Icon',
      body:new ListView(
        children: <Widget>[
          new Text('普通Image'),
          new Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2338002771,1718294115&fm=27&gp=0.jpg'),
          new Text('FadeInImage'),
          buildFadeIn(),
          new Text('vector-Icon'),
          new Icon(Icons.access_time,color:Colors.green,size: 34.0,)
        ],

      )
    );
  }
}