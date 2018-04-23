import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new WidgetsApp(color: const Color.fromARGB(255, 255, 255, 255),builder: (context,widget) {
      return new MyHomePage();
    });
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return new CupertinoPageScaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
      navigationBar: new CupertinoNavigationBar(
        middle: new Text('Demo'),
      ),
      child: new Container(
        child: new Text('www'),
      ),
    );
  }
}
