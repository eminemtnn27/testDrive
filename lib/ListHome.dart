
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:wifikir_start/navbar.dart';
import 'package:wifikir_start/tabsPage.dart';
import 'package:wifikir_start/widgets/appbar.dart';
import 'package:wifikir_start/widgets/body.dart';
import 'package:wifikir_start/widgets/bottomNavbar.dart';
import 'package:wifikir_start/widgets/drawer.dart';
class ListHome extends StatefulWidget {
  ListHome({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _ListHomeState createState() => _ListHomeState();
}

class _ListHomeState extends State<ListHome> {
//sayfanın tamamı
  @override
  Widget build(BuildContext context) {
  int _selectedIndex=0;
    return Scaffold(
      endDrawer: drawer(),
      appBar: appbar( ),
      body: tabsPage(),
      bottomNavigationBar: navbar(),
    );
  }
}



