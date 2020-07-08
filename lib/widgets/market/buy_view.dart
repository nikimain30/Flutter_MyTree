import 'package:flutter/material.dart';
import 'package:pocketapp/theme/market_app_theme.dart';

class BuyScreen extends StatefulWidget {
  @override
  BuyState createState() => BuyState();


}

class BuyState extends State<BuyScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      child: getMarketUI(),
    );
  }


  Widget getMarketUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
          child: Text(
            'Category',
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          height: 16,
        ),

      ],
    );
  }

}