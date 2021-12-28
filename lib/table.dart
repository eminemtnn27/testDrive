  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class table extends StatefulWidget {
  @override
  _table createState() {
    return new _table();
  }
}

class _table extends State<table> {
  Widget bodyData() =>
      SingleChildScrollView(
      scrollDirection: Axis.vertical,
          physics: ClampingScrollPhysics(),
          child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: DataTable(

            columnSpacing: 85,
            dataRowHeight: 50,
            dividerThickness: 5,
            onSelectAll: (b) {},
            sortColumnIndex: 0,
            sortAscending: true,
            columns: <DataColumn>[
              DataColumn(
                label: Text("No"),
                numeric: false,
                onSort: (i, b) {
                  print("$i $b");
                  setState(() {
                    names.sort((a, b) => a.no.compareTo(b.no));
                  });
                },
                tooltip: "To display no of the Name",
              ),
              DataColumn(
                label: Text("Ad"),
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
                label: Text("Soyad"),
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
                    cells: [
                      DataCell(
                        Text(name.no),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text(name.ad),
                        showEditIcon: false,
                        placeholder: false,
                      ),
                      DataCell(
                        Text(name.soyad),
                        showEditIcon: false,
                        placeholder: false,
                      )
                    ],
                  ),
                )
                .toList()),
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İzleyici Tablosu"),
      ),
      body: Container(
        child: bodyData(),
      ),
    );
  }
}

class tables {
  String ad;
  String soyad;
  String no;

  tables({required this.ad, required this.soyad, required this.no});
}

var names = <tables>[
  tables(no: "1", ad: "Aakash", soyad: "Tewari"),
  tables(no: "2", ad: "Rohan", soyad: "Singh"),
  tables(no: "3", ad: "Pawan", soyad: "Kumar"),
  tables(no: "1", ad: "Aakash", soyad: "Tewari"),
  tables(no: "2", ad: "Rohan", soyad: "Singh"),
  tables(no: "3", ad: "Pawan", soyad: "Kumar"),
  tables(no: "1", ad: "Aakash", soyad: "Tewari"),
  tables(no: "2", ad: "Rohan", soyad: "Singh"),
  tables(no: "3", ad: "Pawan", soyad: "Kumar"),
  tables(no: "1", ad: "Aakash", soyad: "Tewari"),
  tables(no: "2", ad: "Rohan", soyad: "Singh"),
  tables(no: "3", ad: "Pawan", soyad: "Kumar"),
  tables(no: "1", ad: "Aakash", soyad: "Tewari"),
  tables(no: "2", ad: "Rohan", soyad: "Singh"),
  tables(no: "3", ad: "Pawan", soyad: "Kumar"),
  tables(no: "1", ad: "Aakash", soyad: "Tewari"),
  tables(no: "2", ad: "Rohan", soyad: "Singh"),
  tables(no: "3", ad: "Pawan", soyad: "Kumar"),
  tables(no: "1", ad: "Aakash", soyad: "Tewari"),
  tables(no: "2", ad: "Rohan", soyad: "Singh"),
  tables(no: "3", ad: "Pawan", soyad: "Kumar"),
  tables(no: "1", ad: "Aakash", soyad: "Tewari"),
  tables(no: "2", ad: "Rohan", soyad: "Singh"),
  tables(no: "3", ad: "Pawan", soyad: "Kumar"),
];
