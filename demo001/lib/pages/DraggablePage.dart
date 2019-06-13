import 'package:flutter/material.dart';

class DraggablePage extends StatefulWidget {
  @override
  _DraggablePageState createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {
  Color _DraggableColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DraggleDemo'),),
      body: Stack(
        children: <Widget>[
          DraggableWidget(DraggableColor: Colors.lightBlue,offset: Offset(80.0, 80.0),),
          DraggableWidget(DraggableColor: Colors.red,offset: Offset(190.0, 80.0),),
          Center(
            child: DragTarget(
              onAccept: (Color color){
                _DraggableColor = color;
              },
                builder: (context, candidateData,rejectedData){
                  return Container(
                    width: 200.0,
                    height: 200.0,
                    color: _DraggableColor,
                  );
                }
            ),
          )
        ],
      ),
    );
  }
}












class DraggableWidget extends StatefulWidget {
  final Offset offset;
  final Color DraggableColor;
  DraggableWidget({Key key,this.DraggableColor,this.offset}) : super(key:key);
  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}
class _DraggableWidgetState extends State<DraggableWidget> {
  Offset offset = Offset(0.0, 0.0);//默认值
  @override
  void initState() {
    super.initState();
    offset = widget.offset;
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: offset.dx,
      top: offset.dy,
      child: Draggable(
        data: widget.DraggableColor,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: widget.DraggableColor ,
          ),
          feedback: Container(//拖动时的UI样式
            width: 110.0,
            height: 110.0,
            color: widget.DraggableColor.withOpacity(0.5),
          ),
        onDraggableCanceled: (Velocity velocity, Offset offset){
          setState(() {
            this.offset = offset;
            print(offset);
          });
        },
      ),
    );
  }
}
