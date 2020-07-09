import 'package:flutter/material.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:pocketapp/theme/market_app_theme.dart';

class BuyScreen extends StatefulWidget {
  @override
  BuyState createState() => BuyState();
}

class BuyState extends State<BuyScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green[50].withOpacity(0.99),
      body: SingleChildScrollView(
        child: getBuyUI(),
      ),
    );
  }

  Widget getBuyUI() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Stack(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(left: 20, top: 15.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 15.0, horizontal: 10.0),
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        bottomLeft: Radius.circular(40.0)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(right: 5.0, left: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'how buying works',
                            style: TextStyle(
                                color: Colors.teal[900],
                                fontSize: 28.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'from how buying works, how buying\nworks,how buying works works...',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      )),
                ),
                Align (
                  alignment: Alignment.bottomRight,
                  child:  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * .13),
                    decoration: new BoxDecoration(
                      color: Colors.teal[900],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'Need a little extra help?',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            margin:
                            const EdgeInsets.only(left: 10.0, right: 10.0),
                            decoration: new BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Entypo.info,
                              size: 22.0,
                              color: Colors.green[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )

              ],
            ),
          ),
        ],
      ),

//      ),
    );
  }
}
