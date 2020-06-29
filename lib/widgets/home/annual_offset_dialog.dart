//import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnnualOffsetDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green[50].withOpacity(0.99),
      body:
          Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 10.0),
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
            Stack(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(
                      left: 0, top: 20.0, right: 30.0, bottom: 0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 20.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(40.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              '3,900',
                              style: TextStyle(
                                  color: Colors.teal[900],
                                  fontSize: 55.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'carbon (kg)',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    '3.9',
                                    style: TextStyle(
                                        color: Colors.teal[900],
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    '  tonnes',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, right: 20.0, left: 40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'worth',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '\$58.50',
                                  style: TextStyle(
                                      color: Colors.teal[900],
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                new Container(
                    decoration: new BoxDecoration(
                      color: Colors.teal[900],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0)),
                    ),
                    child: InkWell(
                      onTap: null,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 15.0),
                        child: Text(
                          'Your Annual Offset',
                          style: TextStyle(
                              color: Colors.green[50],
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    )),
              ],
            ),
            new Container(
              margin: EdgeInsets.only(right: 30),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(40.0)),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Container(
                        decoration: new BoxDecoration(
                          color: Colors.teal[900],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 25.0),
                          child: Text(
                            'Breakdown',
                            style: TextStyle(
                                color: Colors.green[50],
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 15.0, right: 15.0),
                        decoration: new BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.rectangle,
                        ),
                        height: 2.0,
                        width: 200,
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(top:20.0 ,bottom:20.0, left: 20.0, right: 20.0),
                        child: Icon(
                          FontAwesomeIcons.tree,
                          size: 50.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10.0 ,bottom:10.0, left: 20.0, right: 20.0),
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
                        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 20.0),
                        child: Text(
                          'via Trees',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15.0, right: 15.0),
                    decoration: new BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.rectangle,
                    ),
                    height: 2.0,
                    width: double.infinity,
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(top:20.0 ,bottom:20.0, left: 20.0, right: 20.0),
                        child: Icon(
                          Icons.equalizer,
                          size: 50.0,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10.0 ,bottom:10.0, left: 20.0, right: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '2,600',
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
                        padding: EdgeInsets.symmetric(vertical: 15.0,horizontal: 20.0),
                        child: Text(
                          'via Market',
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
          ],
        ),
      ),
//      ),
    );
  }
}
