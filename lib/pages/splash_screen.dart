import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  Future navigationPage() {
    Navigator.of(context).pushReplacementNamed('/TutorialScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: null,
      body: new Container(
        decoration: new BoxDecoration(image: DecorationImage(
          image: AssetImage("assets/logo.png"),
          fit: BoxFit.cover,
        ),
        ),
        child: new Center(
          child: new Container(
            padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "My Tree",
                  style: TextStyle(
                      fontFamily: 'Distant Galaxy',
                      fontSize: 45.0,
                      color: Color(0xff004d40)),
                ),
                new Text(
                  "The Carbon Marketplace",
                  style: TextStyle(
                      fontFamily: 'Distant Galaxy',
                      fontSize: 22.0,
                      color: Color(0xff97bf97)),
                ),
//                new Container(
//                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
//                  child: new Image.asset(
//                    'assets/logo.png',
//                    width: 200,
//                    height: 200,
//                  ),
//                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
