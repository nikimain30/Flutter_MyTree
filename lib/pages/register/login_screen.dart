import 'package:flutter/material.dart';
import 'package:pocketapp/widgets/login/information_view.dart';
import 'package:pocketapp/widgets/login/profile_view.dart';
import 'package:pocketapp/widgets/login/sign_up_view.dart';


class LoginScreen extends StatelessWidget  {
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
        body: SignUpScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: ProfileViewScreen(),
    );
  }
}

class InformationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: InformationViewScreen(),
    );
  }
}
