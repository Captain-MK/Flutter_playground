import 'package:flutter/material.dart';
class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login'),),
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset("images/大师-首页.png"),
              ),
//              Expanded(
//                  child: Container(),
//              ),
              Image.asset('images/bj.png'),
              SizedBox(height: 20.0,),
              Container(
                width: 300.0,
                height: 300.0,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(color: Colors.red,offset: Offset(0.0, 0.0),blurRadius: 20.0),
                    BoxShadow(color: Colors.red,offset: Offset(0.0, -0.0),blurRadius: 20.0),
                  ],
                ),
              ),
              Padding(
               padding: EdgeInsets.only(top: 30.0),
              )
//              Material(
//                color: Colors.yellow,
//                child: InkWell(
//                  child: Center(
//                    child: Text('SIGNIN',style: TextStyle(
//                      color: Colors.white,
//                      fontFamily: 'Poppins-Bold',
//                      fontSize: 18,
//                      letterSpacing: 1.0,
//                    ),),
//                  ),
//                  onTap: (){},
//                ),
//              ),
            ],
          ),
//          SingleChildScrollView(
//            child: Padding(
//                padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 60.0),
//              child: Column(
//                children: <Widget>[
//                  SizedBox(height: 50.0,),
//                  Container(
//                    color: Colors.purpleAccent,
//                  ),
//                ],
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
