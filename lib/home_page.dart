import 'package:flutter/material.dart';

import 'customDrawer.dart';
import 'sample_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTab = 0;
  List<Widget> _tab = [
    SamplePageWidget(Icons.home, 'Home'),
    SamplePageWidget(Icons.camera, 'Camera'),
    SamplePageWidget(Icons.settings, 'Settings'),
  ];
  bool loadedOnceFromRoute = false;

  @override
  Widget build(BuildContext context) {
    final tabIndexFromRoute = ModalRoute.of(context).settings.arguments;
    if (tabIndexFromRoute != null && !loadedOnceFromRoute) {
      setState(() {
        _currentTab = tabIndexFromRoute;
        loadedOnceFromRoute = false;
      });
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("My app"),
      ),
      drawer: CustomDrawer(),
      body: _tab[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (indexOfClickedTab) {
          setState(() {
            _currentTab = indexOfClickedTab;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
      ),
    );
  }
}
