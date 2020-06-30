
import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pocketapp/models/home/dashboard.dart';
import 'package:pocketapp/view_models/home_view_model.dart';
import 'package:pocketapp/widgets/home/annual_offset_dialog.dart';
import 'package:pocketapp/widgets/home/mytree_pool_dialog.dart';
import 'package:scoped_model/scoped_model.dart';

import '../no_internet_connection.dart';

class DashboardScreen extends StatefulWidget {
  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<DashboardScreen> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  void annualOffsetWidget() {
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) => AnnualOffsetDialog(),fullscreenDialog: false));
  }

  void myTreePoolWidget() {
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) => MyTreePoolDialog(),fullscreenDialog: false));
  }

  @override
  Widget build(BuildContext context) {
    /*--- Top Section---*/
    var topSection = new Container(
        margin: const EdgeInsets.only(bottom: 25.0),
        child: Row(
          children: <Widget>[
            Stack(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(
                      left: 0, top: 20.0, right: 0.0, bottom: 0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 25.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        bottomRight: Radius.circular(40.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          '3,900',
                          style: TextStyle(
                              color: Colors.teal[900],
                              fontSize: 40.0,
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
                      onTap: annualOffsetWidget,
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
            Spacer(),
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: new Container(
                    margin: EdgeInsets.only(
                        left: 0, top: 20.0, right: 0.0, bottom: 0),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 25.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            '1,205',
                            style: TextStyle(
                                color: Colors.teal[900],
                                fontSize: 40.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'carbon (t)',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                new Container(
                  margin: const EdgeInsets.only(left: 10.0),
                  decoration: new BoxDecoration(
                    color: Colors.teal[900],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0)),
                  ),
                  child: InkWell(
                    onTap: myTreePoolWidget,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 40.0),
                      child: Text(
                        'MyTree Pool',
                        style: TextStyle(
                            color: Colors.green[50],
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));

    var middleSection = new Container(
      height: 230.0,
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ),
      child: InkWell(
          onTap: null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 30, right: 20.0),
                child: Column(
                  children: <Widget>[
                    new Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: new Container(
                          child: Image.asset(
                        'assets/logo.png',
                        height: 100.0,
                        width: 110.0,
                      )),
                    ),
                    new Text('$_n',
                        style: new TextStyle(
                            color: Colors.teal[900],
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600)),
                    Text(
                      'trees',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.rectangle,
                      ),
                      height: 16.0,
                      width: 1.0,
                    ),
                  ],
                ),
              ),
              Stack(
                children: <Widget>[
                  new Container(
                    padding: const EdgeInsets.only(
                        left: 10.0, top: 15.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Your annual offset',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '$_n',
                              style: TextStyle(
                                  color: Colors.teal[900],
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '  tonnes',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Text(
                          '2021 \'s predicted offset',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '$_n',
                              style: TextStyle(
                                  color: Colors.teal[900],
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '  tonnes',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            new Container(
                              margin: const EdgeInsets.only(top: 15.0),
                              child: new FlatButton(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 30.0),
                                  onPressed: add,
                                  color: Colors.red[300],
                                  child: new Text(
                                    "+ Plant Tree",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18.0),
                                  ),
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 180.0),
                      width: 50.0,
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.green[900],
                        shape: BoxShape.rectangle,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(40.0)),
                      ),
                      child: new Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: new Icon(
                          FontAwesomeIcons.leaf,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );

    var bottomSection = new Container(
      height: MediaQuery.of(context).size.height / 2,
      decoration: new BoxDecoration(
        color: Colors.green[900],
        shape: BoxShape.rectangle,
      ),
      child: InkWell(
        onTap: null,
        child: Row(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
              ),
              height: 1.0,
              width: 16.0,
            ),
            Container(
                child: Image.asset(
              'assets/logo.png',
              height: 100.0,
              width: 110.0,
            )),
            BezierChart(
              bezierChartScale: BezierChartScale.CUSTOM,
              xAxisCustomValues: const [0, 5],
              series: [
                BezierLine(
                  label: "Flight",
                  lineColor: Colors.green,
                  data: [
                    DataPoint<double>(value: 10, xAxis: 0),
                    DataPoint<double>(value: 130, xAxis: 5),
                  ],
                ),
              ],
              config: BezierChartConfig(
                displayLinesXAxis: false,
                displayYAxis: false,
                verticalIndicatorStrokeWidth: 3.0,
                verticalIndicatorColor: Colors.black26,
                showVerticalIndicator: true,
                verticalIndicatorFixedPosition: false,
                backgroundGradient: LinearGradient(
                  colors: [
                    Colors.green[900],
                    Colors.green[900],
                    Colors.green[900],
                    Colors.green[900],
                    Colors.green[600],
                    Colors.green,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                footerHeight: 30.0,
              ),
            ),
          ],
        ),
      ),
    );

//    return ScopedModelDescendant<HomeViewModel>(
//      builder: (context, child, model) {
    return FutureBuilder<List<DashboardModel>>(
//          future: model.films,
      builder: (_, AsyncSnapshot<List<DashboardModel>> snapshot) {
//            switch (snapshot.connectionState) {
//              case ConnectionState.none:
//              case ConnectionState.active:
//              case ConnectionState.waiting:
//                return Center(child: const CircularProgressIndicator());
//              case ConnectionState.done:
//                if (snapshot.hasData) {
//                } else if (snapshot.hasError) {
//                  return NoInternetConnection(
//                    action: () async {
////                      await model.setFilms();
////                      await model.setCharacters();
////                      await model.setPlanets();
//                    },
//                  );
//                }
//            }
        return SingleChildScrollView(
            child: new Container(
          child: new Column(
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
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w900,
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              topSection,
              middleSection,
              bottomSection
            ],
          ),
        ));
      },
    );
//      },
//    );
  }
}
