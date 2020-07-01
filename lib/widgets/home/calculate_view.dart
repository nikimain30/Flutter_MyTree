import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';
import 'package:numberpicker/numberpicker.dart';

class CalculateScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CalculateState();
  }
}

class CalculateState extends State<CalculateScreen> {
  int _selectedIndex = 0;

  final List<String> _listViewData = [
    "Out of the food you buy what percentage goes to waste?",
    "What method do you use to discard your waste food?",
    "A List View with many Text - Here's more!",
  ];

  int _currentIntValue = 6;

  _handleValueChanged(num value) {
    if (value != null) {
      //`setState` will notify the framework that the internal state of this object has changed.
      if (value is int) {
        setState(() => _currentIntValue = value);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    NumberPicker integerNumberPicker = new NumberPicker.integer(
      initialValue: _currentIntValue,
      minValue: 1,
      maxValue: 24,
      step: 1,
      highlightSelectedValue: true,
      scrollDirection: Axis.horizontal,
      listViewWidth: double.maxFinite,
      onChanged: _handleValueChanged(_currentIntValue),
    );

    var topSection = new Container(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(30.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.check,
            color: Colors.lightGreen[600],
            size: 35.0,
          ),
          Text(
            "Completed",
            style: TextStyle(color: Colors.lightGreen[600], fontSize: 25.0),
          )
        ],
      ),
    );

    var middleSection = new Container(
      margin: const EdgeInsets.only(top: 25.0, bottom: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "How many hours per week do you travel in this vehicle?",
            style: TextStyle(color: Colors.green[900], fontSize: 22.0),
          ),
          Text(
            "Hint:this is not including your work commute",
            style: TextStyle(color: Colors.grey[350], fontSize: 16.0),
          ),
          integerNumberPicker,
        ],
      ),
    );

    var dividerWidget = Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: new Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Divider(
                  color: Colors.white,
                  thickness: 5.0,
                  height: 50,
                )),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                child: Text(
                  'Home',
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
    );

    Widget _getListItemTile(BuildContext context, int index) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        color: _selectedIndex != null && _selectedIndex == index
            ? Colors.white
            : Colors.white10,
        child: ListTile(
          title: Text(
            _listViewData[index],
            style: TextStyle(
              color: _selectedIndex != null && _selectedIndex == index
                  ? Colors.lightGreen[400]
                  : Colors.lightGreen[200],
            ),
          ),
        ),
      );
    }

    var listViewWidget = Container(
      margin: EdgeInsets.only(right: 20.0),
      child: ListView.builder(

          itemCount: _listViewData.length,
          itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: _selectedIndex != null && _selectedIndex == index
                        ? Colors.white
                        : Colors.white70,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0))),
                margin: EdgeInsets.symmetric(vertical: 15),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//            color: _selectedIndex != null && _selectedIndex == index
//                ? Colors.white
//                : Colors.white70,
                child: ListTile(
                  title: Text(
                    _listViewData[index],
                    style: TextStyle(
                      fontSize: 22.0,
                      color: _selectedIndex != null && _selectedIndex == index
                          ? Colors.lightGreen[400]
                          : Colors.lightGreen[200],
                    ),
                  ),
                ),
              )),
    );

    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body:
//      listViewWidget,
      new SingleChildScrollView(
        child: new Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              topSection,
              middleSection,
              dividerWidget,
              Expanded(
                child: listViewWidget,
              )
            ],
          ),
        ),
      ),

    );
  }
}
