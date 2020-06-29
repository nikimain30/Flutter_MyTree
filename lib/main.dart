import 'package:flutter/material.dart';
import 'package:pocketapp/pages/home/home_screen.dart';
import 'package:pocketapp/pages/register/login_screen.dart';
import 'package:pocketapp/pages/splash_screen.dart';
import 'package:pocketapp/pages/tutorial_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: new SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/TutorialScreen': (BuildContext context) => new TutorialScreen(),
        '/register': (BuildContext context) => new LoginScreen(),
        '/login': (BuildContext context) => new ProfileScreen(),
        '/login': (BuildContext context) => new InformationScreen(),
        '/home': (BuildContext context) => new HomeScreen()
      },
    );
  }
}
