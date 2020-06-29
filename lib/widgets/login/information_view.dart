import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocketapp/pages/home/home_screen.dart';

class InformationViewScreen extends StatefulWidget {

  @override
  InformationViewState createState() => InformationViewState();

}

class InformationViewState extends State<InformationViewScreen> {

  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String username, password;
  bool isLoading = false;

  Future<void> btnCreateAccount() {
    final form = formKey.currentState;
//    if (form.validate()) {
//      setState(() {
//        isLoading = true;
//      });
//      form.save();
////      loginScreenPresenter.getLogin(username, password);
//
//    }

    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*--- Form Section---*/
    var formSection = new Container(
      margin: const EdgeInsets.only(
          left: 25.0, top: 25.0, bottom: 120.0, right: 25.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                child: new Text(
                  "your information",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900]),
                ),
              ),
              Spacer(),
              new Container(
                child: new Text(
                  "3/3",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900]),
                ),
              ),
            ],
          ),
          new Form(
              key: formKey,
              child: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                        child: new Text(
                          "First name",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[900]),
                        ),
                      ),
                    ],
                  ),
                  new TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      errorStyle: TextStyle(
                        color: Colors.teal,
                        wordSpacing: 1.0,
                      ),
                      labelStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.teal[900]),
                      border: OutlineInputBorder(
                        gapPadding: 10.0,
                      ),
                    ),
                    onSaved: (val) => username = val,
                    validator: (val) {
                      return !val.contains('') ? 'Not a valid First name.' : null;
                    },
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                        child: new Text(
                          "Last name",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[900]),
                        ),
                      ),
                    ],
                  ),
                  new TextFormField(
                    onSaved: (val) => password = val,
                    validator: (val) {
                      return val.length < 8
                          ? "Not a valid Last name"
                          : null;
                    },
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                        errorStyle: TextStyle(
                          color: Colors.teal,
                          wordSpacing: 1.0,
                        ),
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.teal[900]),
                        border: OutlineInputBorder(
                          gapPadding: 10.0,
                          borderSide: BorderSide(color: Colors.white, width: 5.0),
                        ),
                       ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                        child: new Text(
                          "Postcode",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[900]),
                        ),
                      ),
                    ],
                  ),
                  new TextFormField(
                    onSaved: (val) => password = val,
                    validator: (val) {
                      return val.length <= 6
                          ? "Postcode must have atleast 6 digit"
                          : null;
                    },
                    decoration: new InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                        errorStyle: TextStyle(
                          color: Colors.teal,
                          wordSpacing: 1.0,
                        ),
                        labelStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.teal[900]),
                        border: OutlineInputBorder(
                          gapPadding: 10.0,
                          borderSide: BorderSide(color: Colors.white, width: 5.0),
                        ),
                        ),
                  ),
                ],
              )),
        ],
      ),
    );

    var bottomSection = new Container(
      child: RaisedButton(
            padding:
            const EdgeInsets.only(left: 0, right: 0, top: 20.0, bottom: 20.0),
            onPressed: btnCreateAccount,
            child: const Text('Create account', style: TextStyle(fontSize: 20)),
            color: Color(0xffffb300),
            textColor: Colors.white,
          ),

    );

    return SingleChildScrollView(
        child: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              formSection,
              isLoading ? CircularProgressIndicator() : bottomSection
            ],
          ),
        ));
  }

}