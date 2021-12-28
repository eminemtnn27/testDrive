import 'package:flutter/material.dart';
import 'package:wifikir_start/ListHome.dart';
import 'package:wifikir_start/all.dart';
import 'package:wifikir_start/tabsPage.dart';
import 'package:wifikir_start/chart.dart';
import 'package:wifikir_start/screens/login_screen.dart';

import 'deneme.dart';
import 'h.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'rubik',
        primarySwatch: Colors.deepOrange,
      ),
        home :LoginScreen(),//chart(),//new ListPage(title: 'Özel Dersler Koleji'),// LoginScreen(),//,
    );
  }
}

