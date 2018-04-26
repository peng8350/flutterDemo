import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:fluterdemo/beans/Gank.dart';
import 'package:fluterdemo/pages/Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;


//简单网络加载,httoClient和dart的http Api
class HttpPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HttpState();
  }
}

class HttpState extends State<HttpPage>{

  final url = Uri.parse('http://gank.io/api/day/2015/08/07');
  final httpClient = new HttpClient();
  List<Gank> data2=[];


  void initData() async{
    httpClient.getUrl(url).then((HttpClientRequest request){
      return request.close();
    }).then((HttpClientResponse response){
      return response.transform(utf8.decoder).join();
    }).then(
        (data) {
          var responJson = json.decode(data)['results']['Android'];
          this.setState((){
            for(final item in responJson){
              data2.add(new Gank.fromJson(item));
            }
          });

        }
    );

  }

  Future<List<Gank>> getData() async {
    http.Response response =
    await http.get("http://gank.io/api/day/2015/08/07");
    final resJson = json.decode(response.body)['results']['Android'];
    List<Gank> list = [];
    for (var item in resJson) {
      list.add(new Gank.fromJson(item));
    }
    return list;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initData();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(
        title: '网络',
        body:

            new ListView(
              shrinkWrap: true,
              children: <Widget>[
                new Text('dart http api'),
                new FutureBuilder<List<Gank>>(builder: (context,sy){

                  return new ListView.builder(
                    itemCount: sy.data.length,
                      shrinkWrap:true,
                    itemBuilder: (context,index) =>
                    new ListTile(title:new Text(sy.data[index].desc),subtitle: new Text(sy.data[index].url)),

                  );
                },future: getData(),),
                new Text('使用HttpClient获取'),
                new ListView.builder( shrinkWrap: true,itemBuilder: (context,pos){
                  return new ListTile(title:new Text(data2[pos].desc),subtitle: new Text(data2[pos].url));
                },itemCount: data2.length,)
              ],
            )

        );

  }

}
