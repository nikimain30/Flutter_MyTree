import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pocketapp/pages/register/login_screen.dart';

class ProfileViewScreen extends StatefulWidget {
  @override
  ProfileViewState createState() => ProfileViewState();
}

class ProfileViewState extends State<ProfileViewScreen> {
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String username, password;
  bool isLoading = false;

  Future<void> btnNext() {
    final form = formKey.currentState;
//    if (form.validate()) {
//      setState(() {
//        isLoading = true;
//      });
//      form.save();
////      loginScreenPresenter.getLogin(username, password);
//
//
//    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InformationScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    bool _value = false;

    /*--- Form Section---*/
    var formSection = new Container(
      margin: const EdgeInsets.only(
          left: 25.0, top: 25.0, bottom: 100.0, right: 25.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                child: new Text(
                  "your profile",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900]),
                ),
              ),
              Spacer(),
              new Container(
                child: new Text(
                  "2/3",
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                        child: new Text(
                          "Username",
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
                      return !val.contains(' ') ? 'Not a valid username.' : null;
                    },
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                        child: new Text(
                          "I'm here to ...",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[900]),
                        ),
                      ),
                    ],
                  ),
                  new Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        left: 0, right: 0, top: 10.0, bottom: 20.0),
                    child: RaisedButton(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 20.0, bottom: 20.0),
                      onPressed: null,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text('Make a difference',
                          style: TextStyle(fontSize: 20)),
                      color: Colors.white,
                      textColor: Color(0xffffb300),
                    ),
                  ),
                  new Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        left: 0, right: 0, top: 0.0, bottom: 20.0),
                    child: RaisedButton(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 20.0, bottom: 20.0),
                      onPressed: null,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text('Offset my own footprint with trees',
                          style: TextStyle(fontSize: 20)),
                      color: Colors.white,
                      textColor: Color(0xffffb300),
                    ),
                  ),
                  new Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(
                        left: 0, right: 0, top: 0.0, bottom: 20.0),
                    child: RaisedButton(
                      padding: const EdgeInsets.only(
                          left: 0, right: 0, top: 20.0, bottom: 20.0),
                      onPressed: null,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      child: const Text('Get carbon credits',
                          style: TextStyle(fontSize: 20)),
                      color: Colors.white,
                      textColor: Color(0xffffb300),
                    ),
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 20.0),
                        child: new Text(
                          "I am a ...",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[900]),
                        ),
                      ),
                    ],
                  ),
                  new Row(
                    children: <Widget>[
                      new Expanded(
                        child: RaisedButton(
                          padding: const EdgeInsets.all(20),
                          onPressed: btnNext,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: const Text('Individual',
                              style: TextStyle(fontSize: 20)),
                          color: Colors.white,
                          textColor: Color(0xffffb300),
                        ),
                      ),
                      new Expanded(
                        child: RaisedButton(
                          padding: const EdgeInsets.all(20),
                          onPressed: btnNext,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: const Text('Business',
                              style: TextStyle(fontSize: 20)),
                          color: Colors.white,
                          textColor: Color(0xffffb300),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );

    var bottomSection = new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Stack(
            children: <Widget>[
              new Container(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 50.0, bottom: 20.0),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 30.0),
                  child: Text(
                    'I accept the full terms and conditions and privacy policy for MyTree',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              new Container(
                margin: EdgeInsets.symmetric(vertical: 30.0),
                decoration: new BoxDecoration(
                  color: Colors.teal[900],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0)),
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
//                  child: Text(
//                    '',
//                    style: TextStyle(
//                        color: Colors.green[50],
//                        fontSize: 18.0,
//                        fontWeight: FontWeight.w600),
//                  ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _value = !_value;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.teal[900]),
                          child: _value
                              ? Icon(
                                  Icons.check,
                                  size: 25.0,
                                  color: Colors.white,
                                )
                              : Icon(
                                  Icons.check_box_outline_blank,
                                  size: 25.0,
                                  color: Colors.white,
                                ),

                      ),
                    )),
              ),
            ],
          ),
          RaisedButton(
            padding: const EdgeInsets.only(
                left: 0, right: 0, top: 20.0, bottom: 20.0),
            onPressed: btnNext,
            child: const Text('Next', style: TextStyle(fontSize: 20)),
            color: Colors.teal[900],
            textColor: Colors.white,
          ),
        ],
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
