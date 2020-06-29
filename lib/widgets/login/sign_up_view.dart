import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocketapp/pages/register/login_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUpScreen> {
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();

  String username, password;
  bool isLoading = false;

  Future<void> btnNext() {
    final form =  formKey.currentState;
//    if (form.validate()){
//      setState(() {
//        isLoading = true;
//      });
//      form.save();
////      loginScreenPresenter.getLogin(username, password);
//      Navigator.push(context,
//              MaterialPageRoute(builder: (context) => ProfileScreen()),
//            );
//
//    }

    Navigator.push(context,
      MaterialPageRoute(builder: (context) => ProfileScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    /*--- Top Section---*/
    var topSection = new Container(
      child: Stack(
        children: <Widget>[
          new Container(
            margin: EdgeInsets.only(left: 0, top: 20.0, right: 20.0, bottom: 0),
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
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
                children: <Widget>[
                  new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Image.asset(
                      'assets/logo.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Image.asset(
                      'assets/logo.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Image.asset(
                      'assets/logo.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Image.asset(
                      'assets/logo.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                  ),
                  new Container(
                    padding: EdgeInsets.all(10.0),
                    child: new Image.asset(
                      'assets/logo.png',
                      height: 40.0,
                      width: 40.0,
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
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
              child: Text(
                'Sign up with social media',
                style: TextStyle(
                    color: Colors.green[50],
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );

    /*--- Form Section---*/
    var formSection = new Container(
      margin:
      const EdgeInsets.only(left: 25.0, top: 25.0, bottom: 100.0, right: 25.0),
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Container(
                child: new Text(
                  "or sign up below",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal[900]),
                ),
              ),
              Spacer(),
              new Container(
                child: new Text(
                  "1/3",
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
                          "Email address",
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
                      return !val.contains('@') ? 'Not a valid email.' : null;
                    },
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
                        child: new Text(
                          "Password",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal[900]),
                        ),
                      ),
                      Spacer(),
                      new Container(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                        child: new Text(
                          "At least 6 characters",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffd6d6d6)),
                        ),
                      )
                    ],
                  ),
                  new TextFormField(
                    onSaved: (val) => password = val,
                    validator: (val) {
                      return val.length < 8
                          ? "Paswword must have atleast 8 chars"
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
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color(0xffd6d6d6),
                          size: 30.0,
                        )),
                  ),
                  new Row(
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
                        child: new Text(
                          "Confirm password",
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
                          ? "Paswword must have atleast 8 chars"
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
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Color(0xffd6d6d6),
                          size: 30.0,
                        )),
                  ),
                ],
              )),
        ],
      ),
    );


    var bottomSection = new Container(
      child: RaisedButton(
        padding: const EdgeInsets.only(
            left: 0,right: 0,top: 20.0,bottom: 20.0),
        onPressed:btnNext,
        child: const Text('Next', style: TextStyle(fontSize: 20)),
        color: Colors.teal[900],
        textColor: Colors.white,
      ),
    );
    
    
    
    return SingleChildScrollView(
        child: new Container(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          topSection,
          formSection,
          isLoading ? CircularProgressIndicator() : bottomSection
        ],
      ),
    )
    );
  }
}
