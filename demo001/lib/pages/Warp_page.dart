import 'package:flutter/material.dart';

class warppage extends StatefulWidget {
  @override
  _warppageState createState() => _warppageState();
}

class _warppageState extends State<warppage> {
  List<Widget> list;
  @override
  void initState() {
    super.initState();
    list = List<Widget>()..add(addWidget());
  }

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('WarpPage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey[300],
            width: w,
            height: h / 2.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Wrap(
                children: list,
                spacing: 20.0,
                runSpacing: 20.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget addWidget() {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (list.length < 9) {
            list.insert(list.length - 1, imageWidget(list.length - 1));
          }
        });
      },
      child: Container(
        color: Colors.grey,
        child: Icon(Icons.add),
        width: 100.0,
        height: 100.0,
      ),
    );
  }

  Widget imageWidget(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          list.removeAt(index);
        });
      },
      child: Container(
        color: Colors.yellow,
        child: Center(
          child: Text('图片$index'),
        ),
        width: 100.0,
        height: 100.0,
      ),
    );
  }
}
