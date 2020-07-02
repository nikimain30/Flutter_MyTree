import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTreePoolDialog extends StatelessWidget {

  void helpWidget(BuildContext context) {
    Navigator.of(context).pushNamed("/help");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green[50].withOpacity(0.99),
      body: SingleChildScrollView(
      child: Container(
      margin: const EdgeInsets.only(top: 25.0,bottom: 25.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                  child: Text(
                    '\$26.50',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        color: Colors.green[900],
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Stack(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(left: 30, top: 20.0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 10.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(40.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(
                                  right: 20.0, left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    'from',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.group,
                                        size: 30.0,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        ' 105',
                                        style: TextStyle(
                                            color: Colors.teal[900],
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          Column(
                            children: <Widget>[
                              Text(
                                '3,900',
                                style: TextStyle(
                                    color: Colors.teal[900],
                                    fontSize: 45.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'carbon (t)',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'kg',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      '   12,205,000',
                                      style: TextStyle(
                                          color: Colors.teal[900],
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: new Container(
                        decoration: new BoxDecoration(
                          color: Colors.teal[900],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0)),
                        ),
                        child: InkWell(
                          onTap: null,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            child: Text(
                              'MyTree Pool',
                              style: TextStyle(
                                  color: Colors.green[50],
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 30),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(40.0)),
              ),
              child: Column(
                children: <Widget>[
                  Align(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Expanded(
                          child: new Container(
                            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Divider(
                              thickness: 4,
                              height: 2,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        new Container(
                          decoration: new BoxDecoration(
                            color: Colors.teal[900],
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0,horizontal: 10.0),
                            child: Text(
                              'Your market activity',
                              style: TextStyle(
                                  color: Colors.green[50],
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                    alignment: Alignment.topRight,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(
                            top: 20.0, bottom: 20.0, left: 20.0, right: 20.0),
                        child: Icon(
                          Icons.equalizer,
                          size: 40.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 10.0, bottom: 10.0, left: 20.0, right: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '1,300',
                              style: TextStyle(
                                  color: Colors.teal[900],
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'carbon (kg)',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        child: Text(
                          'For sale',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
        InkWell(
          onTap: () => helpWidget(context),
           child:  Container(
              margin: const EdgeInsets.only(top: 60),
              child: Stack(
                children: <Widget>[
                  Align(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 70.0),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40.0),
                            topLeft: Radius.circular(40.0)),
                      ),
                      child: Text(
                        "Need a little extra help?",
                        style: TextStyle(
                          color: Colors.green[900],
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 15),
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      decoration: new BoxDecoration(
                        color: Colors.green[900],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Entypo.info,
                        size: 22.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
          ],
        ),
      ),
      ),
//      ),
    );
  }
}
