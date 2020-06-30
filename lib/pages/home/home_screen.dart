import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocketapp/view_models/home_view_model.dart';
import 'package:pocketapp/widgets/home/dashboard_view.dart';
import 'package:pocketapp/widgets/home/equalizer_view.dart';
import 'package:pocketapp/widgets/home/settings_view.dart';
import 'package:pocketapp/widgets/home/user_view.dart';


class HomeScreen extends StatefulWidget {

  final HomeViewModel viewModel;

  HomeScreen({Key key, @required this.viewModel}) : super(key: key);

  @override
  HomeState createState() => HomeState();

}

class HomeState extends State<HomeScreen> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    DashboardScreen(),
    PoolScreen(),
    UserScreen(),
    SettingsScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     backgroundColor: Colors.green[50],
      appBar: null,
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.dashboard,
                color: Colors.grey[600],size: 30.0),
            activeIcon: new Icon(Icons.dashboard,
            color: Colors.lightGreen[600],size: 30.0),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.equalizer, color: Colors.grey[600], size: 30.0,),
            activeIcon: new Icon(Icons.equalizer,
                color: Colors.lightGreen[600],size: 30.0),
            title: Text(""),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.group, color: Colors.grey[600],size: 30.0,),
            activeIcon: new Icon(Icons.group,
                color: Colors.lightGreen[600],size: 30.0),
            title: Text(""),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.grey[600],size: 30.0,),
            activeIcon: new Icon(Icons.settings,
                color: Colors.lightGreen[600],size: 30.0),
            title: Text(""),
          )
        ],
      ),
    );
  }

}