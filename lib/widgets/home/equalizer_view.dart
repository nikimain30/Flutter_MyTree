import 'package:flutter/material.dart';
import 'package:pocketapp/models/home/dashboard.dart';

class PoolScreen extends StatefulWidget {
  @override
  PoolState createState() => PoolState();

}

class PoolState extends State<PoolScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    var tabButton = new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[

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
                    vertical: 10.0, horizontal: 40.0),
                child: Text(
                  'Pool',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )),
        new Container(
            decoration: new BoxDecoration(
              color: Colors.teal[900],
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: InkWell(
              onTap: null,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 40.0),
                child: Text(
                  'Buy',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )),
        new Container(
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
                    vertical: 10.0, horizontal: 40.0),
                child: Text(
                  'Sell',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            )),

      ],

    );

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
              margin: const EdgeInsets.only(top: 25.0,bottom: 25.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                              color: Color(0xFF000000),
                              fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                  tabButton
                ],
              ),
            ));
      },
    );
  }


}