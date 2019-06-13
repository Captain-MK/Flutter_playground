import 'package:flutter/material.dart';
import 'package:demo001/netWorkTool/netTool.dart';
import 'dart:convert';
import 'package:demo001/webController/webController.dart';
import 'package:demo001/pages/settingController.dart';
import 'package:demo001/pages/searchController.dart';
import 'package:demo001/pages/Warp_page.dart';
import 'package:demo001/pages/DraggablePage.dart';
class MailPage extends StatefulWidget {
  @override
  MailPageState createState() => MailPageState();
}

class MailPageState extends State<MailPage> {
  _setting(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => new settingPage()));
  }

  var _dataArr = [];
  void _getData() {
    Map<String, String> map = Map();
    HttpController.get('https://api.github.com/orgs/raywenderlich/members',
        (data) {
//        final body = JsonDecoder().convert(data.toString());
      List body = jsonDecode(data.toString());
      var models = [];
//        for(int i = 0;i<items.length;i++){
//          var model = userModel(login: items[i]['login'],avatar_url: items[i]['avatar_url']);
//          models.add(model);
//        }
      body.forEach((model) {
        models.add(userModel(
            login: model['login'],
            avatar_url: model['avatar_url'],
            html_url: model['html_url'],
            site_admin: model['site_admin']));
      });
      setState(() {
        _dataArr = models;
        print(_dataArr);
      });
    }, params: map);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  _getToggleChild(userModel model, int index) {
    if (model.site_admin) {
      return ListTile(
        title: Text(model.login + '${index - 1}'),
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(model.avatar_url),
        ),
        subtitle: Text(generateMd5('我爱你')),
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) {
              return new webController(
                model.html_url,
                model.login,
              );
            },
          ));
        },
      );
    } else {
      return ListTile(
        title: Text(model.login + '${index - 1}'),
        leading: CircleAvatar(
          radius: 25.0,
          backgroundImage: NetworkImage(model.avatar_url),
        ),
        subtitle: Text(generateMd5('我爱你')),
        onTap: () {
          Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) {
              return new webController(
                model.html_url,
                model.login,
              );
            },
          ));
        },
        trailing: Icon(Icons.cancel),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: (){
              showSearch(context: context, delegate: searchDelegate());
            },
        ),
        title: Text('我的'),
        elevation: 6.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              onPressed: () {
                _setting(context);
              }),
          IconButton(
              icon: Icon(
                Icons.credit_card,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>warppage()));
              }),
        ],
      ),
      body: ListView.builder(
          itemCount: _dataArr.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Stack(
                children: <Widget>[
                  Image.network(
                      'http://img5.mtime.cn/mg/2019/05/14/093900.88344827.jpg'),
                  Positioned(
                    left: 15.0,
                    bottom: 15.0,
                    child: RaisedButton(
                      child: CircleAvatar(
                        radius: 40.0,
                        backgroundImage: NetworkImage(
                            'https://wx1.sinaimg.cn/mw690/6446a7c1ly1g32bvll65sj21sc2ds1ky.jpg'),
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DraggablePage()));
                      },
                    ),
                  ),
                ],
              );
            }
            userModel model = _dataArr[index - 1];
            return Column(
              children: <Widget>[
                _getToggleChild(model, index),
                Divider(
                  height: 5.0,
                ),
              ],
            );
          }
//          separatorBuilder: (BuildContext context, int index){
//            if (index == 0) {
//                return  Container(height: 0,);
//            }else{
//                return  Divider();
//            }
//          }

          ),
    );
  }
}



class userModel {
  String login;
  String avatar_url;
  String html_url;
  bool site_admin;
  userModel({this.login, this.avatar_url, this.html_url, this.site_admin});
}
