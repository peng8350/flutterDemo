import 'package:fluterdemo/pages/Page.dart';
import 'package:fluterdemo/pages/SimplePage.dart';
import 'package:flutter/cupertino.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => new _TabPageState();
}

class _TabPageState extends State<TabPage> {
  List<SimplePage> list;
  int selectIndex = 0;
  BottomNavigationBarItem _renderBarItem(String url, String title) {
    return new BottomNavigationBarItem(
        icon: new Image.network(url,width: 24.0,height:24.0), title: new Text(title));
  }

  List<BottomNavigationBarItem> getList() {
    List<BottomNavigationBarItem> list = new List();
    list.add(_renderBarItem("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524592071973&di=8e9b8c17bdee0e3706c02d35b0315fc5&imgtype=jpg&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D2087450671%2C3303921693%26fm%3D214%26gp%3D0.jpg", "tab1"));
    list.add(_renderBarItem("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524592071973&di=8e9b8c17bdee0e3706c02d35b0315fc5&imgtype=jpg&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D2087450671%2C3303921693%26fm%3D214%26gp%3D0.jpg", "tab2"));
    list.add(_renderBarItem("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524592071973&di=8e9b8c17bdee0e3706c02d35b0315fc5&imgtype=jpg&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D2087450671%2C3303921693%26fm%3D214%26gp%3D0.jpg", "tab3"));
    list.add(_renderBarItem("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524592071973&di=8e9b8c17bdee0e3706c02d35b0315fc5&imgtype=jpg&src=http%3A%2F%2Fimg1.imgtn.bdimg.com%2Fit%2Fu%3D2087450671%2C3303921693%26fm%3D214%26gp%3D0.jpg", "tab4"));

    return list;
  }

  void initPages(){
    list  =new List();
    list.add(new SimplePage(title:"页面1"));
    list.add(new SimplePage(title: "页面2"));
    list.add(new SimplePage(title:"页面3"));
    list.add( new SimplePage(title:"页面4"));
  }

  Widget _renderPage(int index){
    return list[index];
  }

  @override
  Widget build(BuildContext context) {
    return new Page(
        title: "底部导航器的应用",
        body: new CupertinoTabScaffold(
            tabBar: new CupertinoTabBar(
              currentIndex: 2,
              items: getList(),
              onTap: (int index) {
                print(this.selectIndex);
              },
            ),
            tabBuilder: (BuildContext context,int index){
              return _renderPage(index);
            }));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.initPages();
  }

}
