import 'package:flutter/material.dart';
import 'package:pocketapp/theme/market_app_theme.dart';

class MarketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        margin: const EdgeInsets.only(top: 15.0),
        child: Column(
          children: <Widget>[
            getMarketUI(),
            const SizedBox(
              height: 18,
            ),
            getGraphUI(context),
          ],
        ));
  }

  Widget getMarketUI() {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        new Container(
          margin: EdgeInsets.only(top: 20.0, right: 20.0),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  child: Icon(
                    Icons.equalizer,
                    size: 40.0,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '1,300',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 34.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'carbon (kg)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'worth',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '\$19.50',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
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
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Text(
              'Your Credits in the pool',
              style: TextStyle(
                  color: Colors.green[50],
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }

  Widget getGraphUI(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        new Container(
          width: MediaQuery.of(context).size.width,
          margin:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * .13),
          height: MediaQuery.of(context).size.height * .55,
          decoration: new BoxDecoration(
            color: Colors.teal[900],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(topRight: Radius.circular(30.0)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          ),
        ),
        new Container(
          margin: EdgeInsets.only(right: MediaQuery.of(context).size.width / 4),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0)),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '12.8',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 38.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'carbon\ntones',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '1',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'carbon tonne',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.grey,
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      Text(
                        '\$15.00',
                        style: TextStyle(
                            color: Colors.teal[900],
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );

//    return new Stack(
//      children: <Widget>[
//        new Container(
//          alignment: Alignment.topLeft,
//          padding: new EdgeInsets.only(
//            top: MediaQuery.of(context).size.height * .20,
//            right: 20.0,),
//          child: new Container(
//            height: 200.0,
//            width: MediaQuery.of(context).size.width,
//            child: new Card(
//              color: Colors.white,
//              elevation: 4.0,
//              child: Column(
//                children: <Widget>[
//                  Container(
//                    child: Row(
//                      children: <Widget>[
//                        Text(
//                          '12.8',
//                          style: TextStyle(
//                              color: Colors.teal[900],
//                              fontSize: 38.0,
//                              fontWeight: FontWeight.w600),
//                        ),
//                        Container(
//                          margin: const EdgeInsets.only(left: 20.0),
//                          child: Text(
//                            'carbon\ntones',
//                            style: TextStyle(
//                                color: Colors.grey,
//                                fontSize: 24.0,
//                                fontWeight: FontWeight.w600),
//                          ),
//                        )
//                      ],
//                    ),
//                  ),
//                  Container(
//                    child: Row(
//                      children: <Widget>[
//                        Text(
//                          '1',
//                          style: TextStyle(
//                              color: Colors.teal[900],
//                              fontSize: 25.0,
//                              fontWeight: FontWeight.w600),
//                        ),
//                        Text(
//                          'carbon tonne',
//                          style: TextStyle(
//                              color: Colors.grey,
//                              fontSize: 18.0,
//                              fontWeight: FontWeight.w600),
//                        ),
////                      Expanded(
////                        child: new Container(
////                            margin: const EdgeInsets.only(left:10.0,right: 10.0),
////                            child: VerticalDivider(
////                              color: Colors.grey,
////                              thickness: 10.0,
////                              width: 10,
////                            )),
////                      ),
//                        Text(
//                          '\$15.00',
//                          style: TextStyle(
//                              color: Colors.teal[900],
//                              fontSize: 22.0,
//                              fontWeight: FontWeight.w600),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ),
//        // The containers in the background
//        new Column(
//          children: <Widget>[
//            new Container(
//              height: MediaQuery.of(context).size.height * .35,
//              color: Colors.blue,
//            ),
//            new Container(
//              height: MediaQuery.of(context).size.height,
//              color: Colors.white,
//            )
//          ],
//        ),
//        // The card widget with top padding,
//        // incase if you wanted bottom padding to work,
//        // set the `alignment` of container to Alignment.bottomCenter
//
//      ],
//    );
  }
}
