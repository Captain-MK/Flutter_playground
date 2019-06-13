import 'package:flutter/material.dart';
import 'package:demo001/pages/HomePage.dart';
import 'package:demo001/pages/AirplayPage.dart';
import 'package:demo001/pages/MailPage.dart';
import 'package:demo001/pages/PhonePage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '导航的跳转',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
@override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final _titles = ['首页','圈子','电话','我的'];
  final _body = [new HomePage(),new AirplayPage(),new PhonePage(),new MailPage()];
  var _currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    modelText model = modelText('mk');
    print(model.name);
    model.name = 'woaini';
    print(model.name);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: _body[_currentIndex],
      bottomNavigationBar: Theme(
        isMaterialAppTheme: true,
        data: ThemeData(splashColor: Colors.transparent,highlightColor: Colors.transparent),//去掉水波纹
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home,color: (_currentIndex == 0)?Colors.lightBlue:Colors.grey,),title: Text(_titles[0],style: TextStyle(color: (_currentIndex == 0)?Colors.lightBlue:Colors.grey),)),
            BottomNavigationBarItem(icon: Icon(Icons.airplay),title: Text(_titles[1])),
            BottomNavigationBarItem(icon: Icon(Icons.phone),title: Text(_titles[2])),
            BottomNavigationBarItem(icon: Icon(Icons.mail),title: Text(_titles[3])),
          ],
          //设置显示的模式
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.all(2.0),
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30.0)
        ),
        child: FloatingActionButton(
          elevation: 0.0,
          tooltip: '提示',
          onPressed: null,
          child: Icon(Icons.add,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

}

class modelText {
  String name;
  modelText(this.name);
}