import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../tabsPage.dart';

class body extends StatefulWidget {

  @override

  _bodyState createState() => _bodyState();

}

class _bodyState extends State<body> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    tabsPage(),
    Center(
      child: Icon(
        Icons.camera,
        size: 150,
      ),
    ),
    Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Ödev Bul',
            labelStyle: TextStyle(fontWeight: FontWeight.bold)),
      ),
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return
      IndexedStack(
        children: _pages,
        index: _selectedIndex,
      );
  }
}