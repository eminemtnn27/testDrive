//import 'package:charts_flutter/flutter.dart' as charts;
//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:wifikir_start/tabsPage.dart';
import 'package:syncfusion_flutter_charts/charts.dart' ;
import 'package:wifikir_start/widgets/appbar.dart';
import 'package:wifikir_start/widgets/bottomNavbar.dart';
import 'package:wifikir_start/widgets/drawer.dart';

import 'all.dart';
import 'deneme.dart';

class chart extends StatefulWidget {

  @override
  _chartState createState() => _chartState();
}

class _chartState extends State<chart> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: drawer(),
      appBar: appbar(),
        body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
          //height: 340,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 300,width: 390,
                  child: SfCartesianChart( borderWidth: 2,plotAreaBorderWidth:2,
                    title: ChartTitle(text: '\n\n'),
                    primaryXAxis: NumericAxis(isVisible: false,
                        majorGridLines: MajorGridLines(width: 1 ),
                    ),
                    primaryYAxis: NumericAxis(interval:10,rangePadding: ChartRangePadding.additional,
                      labelFormat: '{value}%',  majorGridLines: MajorGridLines(width: 1),
                      minorGridLines: MinorGridLines(width: 10,color: Colors.black),
                    ),
                    series: getDefaultLineSeries(),
                    tooltipBehavior: TooltipBehavior(enable: true,color: Colors.black,),
                  ),
                ),

                Container(
                  alignment: AlignmentDirectional.topEnd,
                  //height: 10,
                 margin: new EdgeInsets.symmetric(horizontal: 1,vertical: 30),
                  child:_buildList(),

                ),
              ]),

        ),
      bottomNavigationBar: bottomNavbar(),
    );
  }

  List getDefaultLineSeries() {
    final List<_Verilerim> verilerim = <_Verilerim>[
      _Verilerim(2005, 21, 50),
      _Verilerim(2006, 4, 40),
      _Verilerim(2007, 36, 20),
      _Verilerim(2008, 18, 60),
      _Verilerim(2009, 26, 50),
      _Verilerim(2010, 38, 10),
    ];
    return <LineSeries<_Verilerim, num>>[
      LineSeries<_Verilerim, num>(
        color: Colors.red,
        animationDuration: 2500,
       enableTooltip: true,
        dataSource: verilerim,
        xValueMapper: (_Verilerim sales, _) => sales.x,
        yValueMapper: (_Verilerim sales, _) => sales.y,
        width: 3,
        name: '1.Eleman',
        markerSettings: MarkerSettings(isVisible: true),
        onPointTap:(ChartPointDetails details) {
          print(details.pointIndex);
          print(details.seriesIndex);
           Navigator.push(
               context,
              MaterialPageRoute(
               builder: (context) => chart() )
                  );
        },
    ),
      LineSeries<_Verilerim, num>(
        color: Colors.blue,
        animationDuration: 2500,
        enableTooltip: true,
        dataSource: verilerim,
        width: 3,
        xValueMapper: (_Verilerim sales, _) => sales.x,
        yValueMapper: (_Verilerim sales, _) => sales.y2,
        name: '2.Eleman',
        markerSettings: MarkerSettings(isVisible: true),
        onPointTap:(ChartPointDetails details) {
          print(details.pointIndex);
          print(details.seriesIndex);
        },
      ),
    ];
  }

  Widget  _buildList() {
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:
        DataTable(
       columnSpacing: 85,
       horizontalMargin: 45,
        headingRowHeight: 45,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,//Colors.teal,//.red.shade500,
         // border: Border.all(color: Colors.orangeAccent,width: 1),//
          //borderRadius: BorderRadius.circular(10),
        ),
        dataRowColor: MaterialStateProperty.all(Colors.white),
        showBottomBorder: true,
        dividerThickness: 3,
        onSelectAll: (b) {},
        //sortColumnIndex: 1,
        sortAscending: true,
        columns: <DataColumn>[
          DataColumn(
            label: Text("Soru",style: TextStyle(color: Colors.white),),
            numeric: false,
            onSort: (i, b) {
              print("$i $b");
              setState(() {
                names.sort((a, b) => a.Soru.compareTo(b.Soru));
              });
            },
            tooltip: "To display no of the Name",
          ),
          DataColumn(
            label: Text("Ad",style: TextStyle(color: Colors.white),),
            numeric: false,
            onSort: (i, b) {
              print("$i $b");
              setState(() {
                names.sort((a, b) => a.ad.compareTo(b.ad));
              });
            },
            tooltip: "To display first name of the Name",
          ),
          DataColumn(
            label: Text("Soyad",style: TextStyle(color: Colors.white),),
            numeric: false,
            onSort: (i, b) {
              print("$i $b");
              setState(() {
                names.sort((a, b) => a.soyad.compareTo(b.soyad));
              });
            },
            tooltip: "To display last name of the Name",
          ),
        ],
        rows: names
            .map(
              (name) => DataRow(
              //  color: MaterialStateProperty.resolveWith<Color>(
                //        (Set<MaterialState> states) {
                       // return Colors.grey.withOpacity(0.3);
                  //  }),
            cells: [
              DataCell(
                Text(name.Soru),
                onTap:() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => new all()));
                },
                showEditIcon: false,
                placeholder: false,
              ),
              DataCell(
                Text(name.ad),
                showEditIcon: false,
                placeholder: false,
                 onTap:() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) =>  new all()));
                },
              ),
              DataCell(
                Text(name.soyad),
                showEditIcon: false,
                onTap:() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) =>  new all()));
                },
                placeholder: false,
              )
            ],
          ),
        )
            .toList())));

  }

}


class _Verilerim{
  final double x;
  final double y;
  final double y2;

  _Verilerim( this.x, this.y, this.y2);
}

class tables {
  String ad;
  String soyad;
  String Soru;

  tables({required this.ad, required this.soyad, required this.Soru});
}

var names = <tables>[
  tables(Soru: "53", ad: "Ali", soyad: "Tewari"),
  tables(Soru: "266", ad: "Rohan", soyad: "Singh"),
  tables(Soru: "35", ad: "Pawan", soyad: "Kumar"),
  tables(Soru: "751", ad: "Derya", soyad: "Tewari"),
  tables(Soru: "23", ad: "Rohan", soyad: "Singh"),
  tables(Soru: "37", ad: "Pawan", soyad: "Kumar"),
  tables(Soru: "51", ad: "Kenan", soyad: "Tewari"),
  tables(Soru: "26", ad: "Rohan", soyad: "Singh"),
  tables(Soru: "33", ad: "Pawan", soyad: "Kumar"),
  tables(Soru: "1", ad: "Kadir", soyad: "Tewari"),
  tables(Soru: "2", ad: "Rohan", soyad: "Singh"),
  tables(Soru: "3", ad: "Pawan", soyad: "Kumar"),


];

