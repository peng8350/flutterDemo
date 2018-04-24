import 'package:flutter/cupertino.dart';
import 'Page.dart';


class ListPage extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ListState();
  }


}

class ListState extends State<ListPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Page(title:'listView',
      body: new Text('ww')
    );
  }

}
