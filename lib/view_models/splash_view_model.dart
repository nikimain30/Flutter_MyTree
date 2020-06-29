import 'dart:async';

import 'package:flutter/cupertino.dart';

class SplashScreenViewModel extends ChangeNotifier {

  BuildContext ctx;

  Future<void> startTime(BuildContext context) async {
    var _duration = new Duration(seconds: 3);
    ctx = context;
    return new Timer(_duration, navigationPage);
  }

  Future<void> navigationPage() {
    Navigator.of(ctx).pushReplacementNamed('/TutorialScreen');
  }
}