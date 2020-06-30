import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HelpState();
  }

}

class HelpState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: new AppBar(
        backgroundColor: Colors.green[50],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: new SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius:
            BorderRadius.all(Radius.circular(10.0)),
          ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child:  Text(
                "Lets help",
                style: TextStyle(
                    color: Colors.teal[900],fontSize: 35.0, fontWeight: FontWeight.w900
                ),
              ),
              padding: const EdgeInsets.all(10.0),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                style: TextStyle(
                    color: Colors.grey,fontSize: 22.0
                ),
              ),
            ),
            Container(
              child:  Text(
                "subheading",
                style: TextStyle(
                    color: Colors.teal[900],fontSize: 25.0, fontWeight: FontWeight.w900
                ),
              ),
              margin: const EdgeInsets.only(left:10,top:10.0),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    " when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                    color: Colors.black,fontSize: 18.0
                ),
              ),
            ),
          ],
         ),
        ),
      ),
    );
  }


}