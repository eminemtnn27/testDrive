import 'dart:convert';

import 'package:charts_common/src/data/series.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wifikir_start/utilities/constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:http/http.dart' as http;
import '../chart.dart';

class registerScreen extends StatefulWidget {

  @override
  _registerScreenState createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {

  Widget _buildNameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          //decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
             // border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.text_format,
                color: Colors.white,
              ),
              hintText: 'Adınızı giriniz',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSurnameTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
         // decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              //border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.text_format,
                color: Colors.white,
              ),
              hintText: 'Soyadınızı giriniz',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          //decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
             // border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Mail adresini giriniz',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
         // decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              //border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Şifrenizi Giriniz',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
  Widget _buildregisterBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,

      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
       Navigator.push(
         context, MaterialPageRoute(builder: (context) => chart()));
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white,
        child: Text(
          'KAYDOL',
          style: TextStyle(
            color: Color(0xFFD51D0E),
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),

      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFEA4803),    //Color(0xFFCB4903), //0xFF73AEF5
                      Color(0xFFEA4803),     // Color(0xFFCB4903), //0xFF61A4F1
                      Color(0xFFEA4803),       // Color(0xFFCB4903), //0xFF478DE0
                      Color(0xFFFF5105),
                        ],
                    stops: [0.1, 0.4, 0.7, 0.9],
                  ),
                ),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 50.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10.0),
                      _buildNameTF(),
                      SizedBox(
                        height: 2.0,
                      ),
                      _buildSurnameTF(),
                      SizedBox(height: 2.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 2.0,
                      ),
                      _buildPasswordTF(),
                      _buildregisterBtn()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
List getDefaultLineSeries() {
  final List<_Verilerim> verilerim = <_Verilerim>[
    _Verilerim(2005, 21, 28),
    _Verilerim(2006, 24, 44),
    _Verilerim(2007, 36, 48),
    _Verilerim(2008, 38, 50),
    _Verilerim(2009, 54, 66),
    _Verilerim(2010, 57, 78),
    _Verilerim(2011, 70, 84)
  ];
  return <LineSeries<_Verilerim, num>>[
    LineSeries<_Verilerim, num>(
      color: Colors.red,
      animationDuration: 2500,
      enableTooltip: true,
      dataSource: verilerim,
      xValueMapper: (_Verilerim sales, _) => sales.x,
      yValueMapper: (_Verilerim sales, _) => sales.y,
      width: 2,
      name: '1.Eleman',
      markerSettings: MarkerSettings(isVisible: true),
    ),
    LineSeries<_Verilerim, num>(
      color: Colors.blue,
      animationDuration: 2500,
      enableTooltip: true,
      dataSource: verilerim,
      width: 2,
      xValueMapper: (_Verilerim sales, _) => sales.x,
      yValueMapper: (_Verilerim sales, _) => sales.y2,
      name: '2.Eleman',
      markerSettings: MarkerSettings(isVisible: true),
    ),

  ];
}

class _Verilerim{
  final double x;
  final double y;
  final double y2;

  _Verilerim( this.x, this.y, this.y2);
//_ChartData(this.x, this.y, this.y2);
}




