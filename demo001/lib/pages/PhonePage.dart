import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class PhonePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeFragmentState();
  }
}

class HomeFragmentState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primaryColor: Colors.white),
        home: new Scaffold(
            appBar: new PreferredSize(
              child: new AppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                title: new Text('二级建造师'),
                actions: <Widget>[
                  Container(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          Icons.add_alarm,
                          size: 25,
                        ),
                        new Text(
                          '咨询',
                          style: new TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(right: 15),
                  ),
                ],
              ),
              preferredSize: new Size.fromHeight(44.0),
            ),
            body: new ListView(
              children: <Widget>[
                SizedBox(height: 15,),
                initTop(),
                initCenter1(),
                initCenter2(),
                initCenter3(),
                initCenter4(),
                initCenter5(),
                initCenter6(),
                initCenter7(),
              ],
            )));
  }

  Widget initTop() {
    return Container(
        color: Colors.white,
        margin: EdgeInsets.only(top: 3),
        height: 200.0,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                    "http://pic9.nipic.com/20100824/2531170_082435310724_2.jpg",
                    fit: BoxFit.fill,
                ),
            );


//            return ();
          },
          itemCount: 3,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: Colors.white,
                  activeColor: Colors.blue,
                  size: 5.0,
                  activeSize: 5.0)),
//                control: new SwiperControl(),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          viewportFraction: 0.9,
          scale: 0.9,
          onTap: (index) => print('点击了第$index个'),
        ));
  }

  Widget initCenter1() {
    return new Container(
      margin: EdgeInsets.all(15.0),
      height: 80.0,
      decoration: new BoxDecoration(
        border: new Border.all(color: Colors.white, width: 0), // 边色与边宽度
        color: Colors.red, // 底色
        //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
//        shape: BoxShape.rectangle, // 默认值也是矩形
        borderRadius: new BorderRadius.circular((10.0)), // 圆角度
      ),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Icon(Icons.call),
              new Text('报班课'),
            ],
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Icon(Icons.access_alarms),
              new Text('免费课'),
            ],
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Icon(Icons.ac_unit),
              new Text('题库'),
            ],
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Icon(Icons.widgets),
              new Text('答疑'),
            ],
          )
        ],
      ),
    );
  }

  initCenter2() {
    return new Container(
      margin: EdgeInsets.only(left: 15),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            height: 20,
            decoration: new BoxDecoration(
              border: new Border.all(color: Colors.black12, width: 2), // 边色与边宽度
              color: Colors.blueAccent, // 底色
              //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
              shape: BoxShape.rectangle, // 默认值也是矩形
              borderRadius: new BorderRadius.circular((0)), // 圆角度
            ),
          ),
          new Container(
            margin: EdgeInsets.only(left: 10),
            child: new Text(
              '直播课',
              style: new TextStyle(fontSize: 20),
            ),
          ),
          new Container(
            height: 15,
            margin: EdgeInsets.only(left: 10),
            decoration: new BoxDecoration(
              border: new Border.all(color: Colors.black12, width: 1), // 边色与边宽度
              color: Colors.black, // 底色
              //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
              shape: BoxShape.rectangle, // 默认值也是矩形
              borderRadius: new BorderRadius.circular((0)), // 圆角度
            ),
          ),
          new Container(
            margin: EdgeInsets.only(left: 10),
            child: new Text(
              '考点重点精确解析',
              style: new TextStyle(fontSize: 14, color: Colors.black12),
            ),
          ),
          new Container(
            height: 28,
            width: 88,
            margin: EdgeInsets.only(right: 15),
            child: new FractionalTranslation(
              translation: const Offset(1.0, 0.0),
              child: new Container(
                decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.blueAccent, width: 1),
                  // 边色与边宽度
                  color: Colors.blue,
                  // 底色
                  //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                  shape: BoxShape.rectangle,
                  // 默认值也是矩形
                  borderRadius: new BorderRadius.circular((90)), // 圆角度
                ),
                child: new Center(
                  child: new Text(
                    '全部课程',
                    style: new TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  initCenter3() {
    return new Container(
      height: 152,
      padding: EdgeInsets.only(left: 15),
      margin: EdgeInsets.only(top: 10),
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          'https://avatar.csdn.net/1/B/3/3_qq1021380645.jpg',
                          width: 162,
                          height: 101,
                          fit: BoxFit.fill,
                        ),
                      ),
                      new Container(
                        width: 162,
                        child: new Stack(
                          children: <Widget>[
                            new Text(
                              '2013次学习',
                              style: new TextStyle(color: Colors.grey),
                            ),
                            new Align(
                              alignment: FractionalOffset.topRight,
                              child: new Text(
                                '免费',
                                style: new TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(right: 10),
                ),
                new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.network(
                        'https://avatar.csdn.net/1/B/3/3_qq1021380645.jpg',
                        width: 162,
                        height: 101,
                        fit: BoxFit.fill,
                      ),
                      new Container(
                        width: 162,
                        child: new Stack(
                          children: <Widget>[
                            new Text(
                              '2013次学习',
                              style: new TextStyle(color: Colors.grey),
                            ),
                            new Align(
                              alignment: FractionalOffset.topRight,
                              child: new Text(
                                '免费',
                                style: new TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(right: 10),
                ),
                new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.network(
                        'https://avatar.csdn.net/1/B/3/3_qq1021380645.jpg',
                        width: 162,
                        height: 101,
                        fit: BoxFit.fill,
                      ),
                      new Container(
                        width: 162,
                        child: new Stack(
                          children: <Widget>[
                            new Text(
                              '2013次学习',
                              style: new TextStyle(color: Colors.grey),
                            ),
                            new Align(
                              alignment: FractionalOffset.topRight,
                              child: new Text(
                                '免费',
                                style: new TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(right: 10),
                ),
                new Container(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.network(
                        'https://avatar.csdn.net/1/B/3/3_qq1021380645.jpg',
                        width: 162,
                        height: 101,
                        fit: BoxFit.fill,
                      ),
                      new Container(
                        width: 162,
                        child: new Stack(
                          children: <Widget>[
                            new Text(
                              '2013次学习',
                              style: new TextStyle(color: Colors.grey),
                            ),
                            new Align(
                              alignment: FractionalOffset.topRight,
                              child: new Text(
                                '免费',
                                style: new TextStyle(color: Colors.red),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(right: 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  initCenter4() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            height: 10,
            decoration: new BoxDecoration(
              border: new Border.all(color: Colors.grey, width: 2), // 边色与边宽度
              color: Colors.grey, // 底色
              //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
              shape: BoxShape.rectangle, // 默认值也是矩形
              borderRadius: new BorderRadius.circular((0)), // 圆角度
            ),
          ),
          new Container(
            height: 50,
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 20,
                  decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.black12, width: 2),
                    // 边色与边宽度
                    color: Colors.blueAccent,
                    // 底色
                    //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                    shape: BoxShape.rectangle,
                    // 默认值也是矩形
                    borderRadius: new BorderRadius.circular((0)), // 圆角度
                  ),
                ),
                new Container(
                  margin: EdgeInsets.only(left: 10),
                  child: new Text(
                    '继续上次学习',
                    style: new TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          new Container(
            alignment: FractionalOffset.topLeft,
            margin: EdgeInsets.only(top: 10, left: 17),
            child: new Text('2018二级建造师一级三科白金卡班'),
          ),
          // 条形进度条
          new Container(
            height: 12,
            margin: EdgeInsets.only(left: 15, right: 15, top: 14),
            child: new LinearProgressIndicator(
              backgroundColor: Colors.grey,
              value: 0.2,
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 8),
            child: new Stack(
              children: <Widget>[
                new Text(
                  '总课时123',
                  style: new TextStyle(color: Colors.grey),
                ),
                new Align(
                  alignment: FractionalOffset.topRight,
                  child: new Text(
                    '已学习12',
                    style: new TextStyle(color: Colors.red),
                  ),
                )
              ],
            ),
          ),
          new Container(
            width: 160,
            height: 40,
            margin: EdgeInsets.only(top: 20),
            alignment: FractionalOffset.center,
            decoration: new BoxDecoration(
              border: new Border.all(color: Colors.blue, width: 2), // 边色与边宽度
              color: Colors.blue, // 底色
              //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
              shape: BoxShape.rectangle, // 默认值也是矩形
              borderRadius: new BorderRadius.circular((4)), // 圆角度
            ),
            child: new Text(
              '继续学习',
              style: new TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  initCenter5() {
    return new Container(
        margin: EdgeInsets.only(top: 20),
        child: new Column(
          children: <Widget>[
            new Container(
              height: 10,
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.grey, width: 2), // 边色与边宽度
                color: Colors.grey, // 底色
                //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                shape: BoxShape.rectangle, // 默认值也是矩形
                borderRadius: new BorderRadius.circular((0)), // 圆角度
              ),
            ),
            new Container(
              height: 50,
              margin: EdgeInsets.only(left: 15, bottom: 10),
              child: new Stack(
                alignment: FractionalOffset.center,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Container(
                        height: 20,
                        margin: EdgeInsets.only(right: 10),
                        decoration: new BoxDecoration(
                          border: new Border.all(color: Colors.blue, width: 2),
                          color: Colors.blue,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      new Text(
                        '刷题',
                        style: new TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                  new Align(
                    alignment: FractionalOffset.centerRight,
                    child: new Container(
                      margin: EdgeInsets.only(right: 15),
                      alignment: FractionalOffset.center,
                      height: 28,
                      width: 64,
                      decoration: new BoxDecoration(
//                        border: new Border.all(color: Colors.grey, width: 64), // 边色与边宽度
                        color: Colors.blue,
                        // 底色
                        //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                        shape: BoxShape.rectangle,
                        // 默认值也是矩形
                        borderRadius: new BorderRadius.circular((90)), // 圆角度
                      ),
                      child: new Text(
                        '进入题库',
                        style: new TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Text(
                        '123',
                        style: new TextStyle(color: Colors.blue, fontSize: 40),
                      ),
                      new Text(
                        '完成题数',
                        style: new TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  new Container(
                    height: 61,
                    decoration: new BoxDecoration(
                      border: new Border.all(color: Colors.grey, width: 1),
                      // 边色与边宽度
                      color: Colors.grey,
                      // 底色
                      //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                      shape: BoxShape.rectangle,
                      // 默认值也是矩形
                      borderRadius: new BorderRadius.circular((0)),
                    ),
                  ),
                  new Column(
                    children: <Widget>[
                      new Text(
                        '100%',
                        style: new TextStyle(color: Colors.red, fontSize: 40),
                      ),
                      new Text(
                        '正确率',
                        style: new TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            new Container(
              width: 160,
              height: 40,
              margin: EdgeInsets.only(top: 20),
              alignment: FractionalOffset.center,
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.blue, width: 2), // 边色与边宽度
                color: Colors.blue, // 底色
                //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                shape: BoxShape.rectangle, // 默认值也是矩形
                borderRadius: new BorderRadius.circular((4)), // 圆角度
              ),
              child: new Text(
                '开始刷题',
                style: new TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }

  initCenter6() {
    return new Container(
        margin: EdgeInsets.only(top: 20),
        child: new Column(
          children: <Widget>[
            new Container(
              height: 10,
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.grey, width: 2), // 边色与边宽度
                color: Colors.grey, // 底色
                //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                shape: BoxShape.rectangle, // 默认值也是矩形
                borderRadius: new BorderRadius.circular((0)), // 圆角度
              ),
            ),
            new Container(
              height: 50,
              margin: EdgeInsets.only(left: 15, bottom: 10),
              child: new Stack(
                alignment: FractionalOffset.center,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Container(
                        height: 20,
                        margin: EdgeInsets.only(right: 10),
                        decoration: new BoxDecoration(
                          border: new Border.all(color: Colors.blue, width: 2),
                          color: Colors.blue,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      new Text(
                        '继续上次学习',
                        style: new TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                  new Align(
                    alignment: FractionalOffset.centerRight,
                    child: new Container(
                      margin: EdgeInsets.only(right: 15),
                      alignment: FractionalOffset.center,
                      height: 28,
                      width: 64,
                      decoration: new BoxDecoration(
//                        border: new Border.all(color: Colors.grey, width: 64), // 边色与边宽度
                        color: Colors.blue,
                        // 底色
                        //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                        shape: BoxShape.rectangle,
                        // 默认值也是矩形
                        borderRadius: new BorderRadius.circular((90)), // 圆角度
                      ),
                      child: new Text(
                        '做题记录',
                        style: new TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(
                    '2017二级建造师《综合能力》考试真题',
                    style: new TextStyle(fontSize: 16),
                  ),
                  new Text(
                    '已完成 10/120',
                    style: new TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            new Container(
              width: 160,
              height: 40,
              margin: EdgeInsets.only(top: 20),
              alignment: FractionalOffset.center,
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.blue, width: 2), // 边色与边宽度
                color: Colors.blue, // 底色
                //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                shape: BoxShape.rectangle, // 默认值也是矩形
                borderRadius: new BorderRadius.circular((4)), // 圆角度
              ),
              child: new Text(
                '开始刷题',
                style: new TextStyle(color: Colors.white),
              ),
            ),
          ],
        ));
  }

  initCenter7() {
    return new Container(
        margin: EdgeInsets.only(top: 20, bottom: 30),
        child: new Column(
          children: <Widget>[
            new Container(
              height: 10,
              decoration: new BoxDecoration(
                border: new Border.all(color: Colors.grey, width: 2), // 边色与边宽度
                color: Colors.grey, // 底色
                //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                shape: BoxShape.rectangle, // 默认值也是矩形
                borderRadius: new BorderRadius.circular((0)), // 圆角度
              ),
            ),
            new Container(
              height: 50,
              margin: EdgeInsets.only(left: 15, bottom: 10),
              child: new Stack(
                alignment: FractionalOffset.center,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Container(
                        height: 20,
                        margin: EdgeInsets.only(right: 10),
                        decoration: new BoxDecoration(
                          border: new Border.all(color: Colors.blue, width: 2),
                          color: Colors.blue,
                          shape: BoxShape.rectangle,
                        ),
                      ),
                      new Text(
                        '推荐班课',
                        style: new TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                  new Align(
                    alignment: FractionalOffset.centerRight,
                    child: new Container(
                      margin: EdgeInsets.only(right: 15),
                      alignment: FractionalOffset.center,
                      height: 28,
                      width: 64,
                      decoration: new BoxDecoration(
//                        border: new Border.all(color: Colors.grey, width: 64), // 边色与边宽度
                        color: Colors.blue,
                        // 底色
                        //        shape: BoxShape.circle, // 圆形，使用圆形时不可以使用borderRadius
                        shape: BoxShape.rectangle,
                        // 默认值也是矩形
                        borderRadius: new BorderRadius.circular((90)), // 圆角度
                      ),
                      child: new Text(
                        '更多',
                        style: new TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            new Container(
                height: 209,
                margin: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                child: Image.network(
                  "http://pic9.nipic.com/20100824/2531170_082435310724_2.jpg",
                  fit: BoxFit.fill,
                )),
            new Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child: new Text(
                '潘老师带你强势分析《综合能力》18年考核方向与重点！',
                style: new TextStyle(fontSize: 16),
              ),
            ),
          ],
        ));
  }
}
