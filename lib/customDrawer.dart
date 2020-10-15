import 'package:flutter/material.dart';

import 'home_page.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            padding: EdgeInsets.all(8),
            child: Text('Demo'),
            alignment: Alignment.bottomLeft,
          ),
          Divider(),
          SizedBox(
            height: 8,
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => HomePage(),
                    settings: RouteSettings(arguments: 0)),
              );
            },
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.camera),
              title: Text('Camera'),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => HomePage(),
                    settings: RouteSettings(arguments: 1)),
              );
            },
          ),
          InkWell(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => HomePage(),
                    settings: RouteSettings(arguments: 2)),
              );
            },
          ),
        ],
      ),
    );
  }
}
