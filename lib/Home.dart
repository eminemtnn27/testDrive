import 'package:flutter/material.dart';
import 'package:wifikir_start/table.dart';
import '../List.dart';
import '../table.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FlatButton (
              child: Text("Film Listesi"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => List()));
              },
              color: Colors.blue,
              textColor: Colors.white,
            ),
            FlatButton (
              child: Text("İzleyici Tablosu"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => table()));
              },
              color: Colors.pink,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
