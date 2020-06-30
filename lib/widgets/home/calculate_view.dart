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


  @override
  Widget build(BuildContext context) {

    int _currentIntValue = 6;

   _handleValueChanged(num value) {
      if (value != null) {
        //`setState` will notify the framework that the internal state of this object has changed.
        if (value is int) {
          setState(() => _currentIntValue = value);
        }
      }
    }

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

//     HorizantalPicker horizantalPicker = new HorizantalPicker(
//      minValue: 1,
//      maxValue: 24,
//      showCursor: false,
//      activeItemTextColor: Colors.white,
//      passiveItemsTextColor: Colors.teal[900],
//      onChanged: (value) {},
//    );

    var topSection = new Container(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.0)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.check,color: Colors.lightGreen[600],
            size: 30.0,
          ),
          Text(
            "Completed",
            style: TextStyle(
              color: Colors.lightGreen[600],
              fontSize: 28.0
            ),
          )
        ],
      ),
    );

    var middleSection = new Container(
      margin: const EdgeInsets.only(top: 20.0,bottom: 15.0),
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 15.0),
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "How many hours per week do you travel in this vehicle?",
            style: TextStyle(
                color: Colors.green[900],
                fontSize: 22.0
            ),
          ),
          Text(
            "Hint:this is not including your work commute",
            style: TextStyle(
                color: Colors.grey[350],
                fontSize: 16.0
            ),
          ),
          integerNumberPicker,
        ],
      ),
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
      body: new Container(
        child: Column(
          children: <Widget>[
            topSection,
            middleSection
          ],
        ),
      ),
    );
  }

}