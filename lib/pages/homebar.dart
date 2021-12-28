import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:wifikir_start/navbar.dart';

import '../tabsPage.dart';
class homebar extends StatefulWidget {
  homebar({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _homebarState createState() => _homebarState();
}
class _homebarState extends State<homebar> {


  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Icon(
          Icons.camera,
          size: 150,
        ),
      );

  }
}
