import 'package:flutter/material.dart';
import '../LaoginPage/login_page.dart';
class HomePage extends StatelessWidget {
  final lists = List<product>.generate(20, (i) {
    return product(name: '我是标题 + ${i}', desc: '我是描述 + ${i}');
  });
  _btnClick(BuildContext context, product model) async {
    final String result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => secoudScreen(model: model)));
    if (result.length != null) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: RaisedButton(
              color: Colors.lightBlue,
              child: Text('LoginPage'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>loginPage()));
              }),
        ),
      ),
      body: ListView.builder(
          itemCount: lists.length,
          itemBuilder: (context, index) {
            return Container(
              height: 350.0,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 250.0,
                      child: Image.network(
                          'http://img5.mtime.cn/mg/2019/05/15/105946.94601629_170X256X4.jpg'),
                    ),
                    ListTile(
                      title: Text(lists[index].name),
                      subtitle: Text(lists[index].desc),
                      leading: Icon(Icons.ac_unit),
                      trailing: Icon(Icons.label),
                      onTap: () {
                        _btnClick(context, lists[index]);
                      },
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}

class secoudScreen extends StatelessWidget {
  final product model;
  secoudScreen({Key key, @required this.model}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('第二个页面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('跳转传值==> ${model.name}'),
            Text(model.desc),
            RaisedButton(
                child: Text('点击返回'),
                onPressed: () {
                  Navigator.pop(context, '返回传值==> ${model.name}');
                }),
          ],
        ),
      ),
    );
  }
}

//model
class product {
  final String name;
  final String desc;
  product({this.name, this.desc});
}
