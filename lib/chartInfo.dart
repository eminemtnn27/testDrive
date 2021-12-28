import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class chartInfo extends StatefulWidget {
  @override
  _chartInfoState createState() => _chartInfoState();
}

class _chartInfoState extends State<chartInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grafik Veri Bilgisi'),
      ),
      body: Center(
           child: Text("Gönderdiğin veri ${widget.key}"),
      ),
        );
  }

}