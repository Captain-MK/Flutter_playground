import 'package:flutter/material.dart';

class settingPage extends StatefulWidget {
  @override
  settingPageState createState() => settingPageState();
}

class settingPageState extends State<settingPage> with SingleTickerProviderStateMixin{//为了一个垂直的选项
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
    _controller.addListener((){

    });
  }
  @override
  void dispose() {
    _controller.dispose();//销毁
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '设置',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        backgroundColor: Colors.white,
        brightness: Brightness.light, //状态栏颜色
//        elevation: 2.0,//阴影

        bottom: TabBar(
          controller: _controller,
            tabs: [
              Tab(icon: Icon(Icons.directions_car,color: Colors.black,),child: Text('汽车',style: TextStyle(color: Colors.red),),),
              Tab(icon: Icon(Icons.directions_transit,color: Colors.black,),),
              Tab(icon: Icon(Icons.directions_bike,color: Colors.black,),),
            ]
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          childPage(),
          childPage(),
          childPage(),
        ],
      ),
    );
  }
}

class childPage extends StatefulWidget{
  @override
  _childPageState createState() => _childPageState();
}

class _childPageState extends State<childPage> with AutomaticKeepAliveClientMixin{
  bool get wantKeepAlive =>true;
  var _count = 0;
  void _tapBtn(){
    setState(() {
      _count+=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('点击按钮+1'),
            SizedBox(height: 15,),
            Text('$_count',style: TextStyle(fontSize: 30,color: Colors.red),),
            ExpansionTile(
              children: <Widget>[
                ListTile(title: Text('1'),leading: Icon(Icons.directions_bike),subtitle: Text('directions_bike'),),
                ListTile(title: Text('2'),leading: Icon(Icons.directions_car),subtitle: Text('directions_car'),),
                ListTile(title: Text('3'),leading: Icon(Icons.directions_boat),subtitle: Text('directions_boat'),),
                ListTile(title: Text('4'),leading: Icon(Icons.directions_subway),subtitle: Text('directions_subway'),),
              ],
              title: Text('expan'),
              backgroundColor: Colors.brown[50],
              leading: Icon(Icons.open_with),
              initiallyExpanded: true,//默认是否打开
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed: _tapBtn,
      ),
    );
  }
}
