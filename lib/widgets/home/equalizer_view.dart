import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pocketapp/theme/market_app_theme.dart';
import 'package:pocketapp/widgets/market/buy_view.dart';
import 'package:pocketapp/widgets/market/pool_view.dart';
import 'package:pocketapp/widgets/market/sell_view.dart';

class PoolScreen extends StatefulWidget {
  @override
  PoolState createState() => PoolState();
}

enum CategoryType {
  pool,
  buy,
  sell,
}

class PoolState extends State<PoolScreen> {
  CategoryType categoryType = CategoryType.pool;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Colors.green[50],
      body: new SingleChildScrollView(
          child : Container(
            margin: const EdgeInsets.only(top: 25.0),
            height: MediaQuery.of(context).size.height + 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                getMarketUI(),
                getTabUI(categoryType),
              ],
            ),
          )
      ),
    );
//    return  SingleChildScrollView(
//      child : Container(
//        margin: const EdgeInsets.only(top: 25.0),
//        width: MediaQuery.of(context).size.width,
//        height: MediaQuery.of(context).size.height,
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.end,
//          mainAxisAlignment: MainAxisAlignment.start,
//          children: <Widget>[
//            getMarketUI(),
//            getTabUI(categoryType),
//          ],
//        ),
//      )
//    );
  }

  Widget getTabUI(CategoryType categoryTypeData) {
    if (CategoryType.pool == categoryTypeData) {
      return Expanded(
        child: MarketScreen(),
      );
    } else if (CategoryType.buy == categoryTypeData) {
      return Expanded(
        child: BuyScreen(),
      );
    } else if (CategoryType.sell == categoryTypeData) {
      return Expanded(
        child: SellScreen(),
      );
    }
  }

  Widget getMarketUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
          child: Text(
            '\$26.50',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: MaketAppTheme.nearlyTeal,
              fontSize: 20,
              letterSpacing: 0.27,
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          children: <Widget>[
            getButtonUI(CategoryType.pool, categoryType == CategoryType.pool),
            const SizedBox(
              width: 16,
            ),
            getBuyUI(CategoryType.buy, categoryType == CategoryType.buy),
            const SizedBox(
              width: 16,
            ),
            getSellUI(CategoryType.sell, categoryType == CategoryType.sell),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.pool == categoryTypeData) {
      txt = 'Pool';
    } else if (CategoryType.buy == categoryTypeData) {
      txt = 'Buy';
    } else if (CategoryType.sell == categoryTypeData) {
      txt = 'Sell';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? MaketAppTheme.nearlyTeal
                : MaketAppTheme.nearlyGreen,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24.0),
                bottomRight: Radius.circular(24.0)),),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? MaketAppTheme.notWhite
                        : MaketAppTheme.nearlyTeal,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBuyUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.pool == categoryTypeData) {
      txt = 'Pool';
    } else if (CategoryType.buy == categoryTypeData) {
      txt = 'Buy';
    } else if (CategoryType.sell == categoryTypeData) {
      txt = 'Sell';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? MaketAppTheme.nearlyTeal
                : MaketAppTheme.nearlyGreen,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
           ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? MaketAppTheme.notWhite
                        : MaketAppTheme.nearlyTeal,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getSellUI(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.pool == categoryTypeData) {
      txt = 'Pool';
    } else if (CategoryType.buy == categoryTypeData) {
      txt = 'Buy';
    } else if (CategoryType.sell == categoryTypeData) {
      txt = 'Sell';
    }
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? MaketAppTheme.nearlyTeal
                : MaketAppTheme.nearlyGreen,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24.0),
                bottomLeft: Radius.circular(24.0)),
            ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? MaketAppTheme.notWhite
                        : MaketAppTheme.nearlyTeal,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
