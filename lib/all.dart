
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:wifikir_start/tabsPage.dart';
import 'package:wifikir_start/widgets/appbar.dart';
import 'package:wifikir_start/widgets/bottomNavbar.dart';
import 'package:wifikir_start/widgets/drawer.dart';
class all extends StatefulWidget {
  all({Key? key, this.title}) : super(key: key);
  final String? title;
  @override
  _allState createState() => _allState();

}
class Lesson {
  String title;
  int price;
  String content;
  String ders;
  var date  =  DateTime.parse.toString() ;
  Lesson(
      {required this.title, required this.price, required this.content,required this.ders,required this.date});
}
List getLessons() {
  return [
    Lesson(
        title: "Osmanlı Devleti Kültür ve Medeniyeti",
        price: 120,
        ders:"TARİH",
        date:  ("2021-07-20") ,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Üslü Sayılar",
        price: 50,
        ders:"MATEMATİK",
        date:  ("2021-07-22") ,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Sayı Problemleri",
        price: 30,
        ders:"MATEMATİK",
        date:  ("2021-07-20") ,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Edebiyat-1",
        price: 30,
        ders:"EDEBİYAT",
        date:  ("2021-07-20") ,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Sayı Problemleri",
        price: 50,
        ders:"MATEMATİK",
        date:  ("2021-07-20") ,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "Dünyanın Şekli ve Hareketleri",
        price: 50,
        ders:"COGRAFYA",
        date:  ("2021-07-25") ,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Lesson(
        title: "İnkılap Tarihi",
        price: 50,
        ders:"TARİH",
        date:  ("2021-07-24") ,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed.  ")
  ];
}
class _allState extends State<all> {
  int _selectedIndex=0; var   lesson= ["TARİH","COGRAFYA","MATEMATİK","GEOMETRİ","EDEBİYAT","FİZİK"];
  late bool isSelected5=false;
  static  List<Widget> _pages = <Widget>[
    tabsPage(),
    Card(
      elevation: 5,
      child:   ListTile(
        leading: Icon(Icons.icecream),
        title: Text("Tarih"),
        trailing: Icon(Icons.food_bank),

      ),
    ),
  Center(
      child: Icon(
        Icons.work,
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      //  _pages.elementAt(_selectedIndex);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: drawer(),
      appBar: appbar( ),
      body:
      IndexedStack(
        children: _pages,
        index: _selectedIndex,
      ),
      // Center(
      //   child: _pages.elementAt(_selectedIndex),
      // ),

      bottomNavigationBar:  TitledBottomNavigationBar(
        currentIndex: _selectedIndex, // Use this to update the Bar giving a position
        onTap: _onItemTapped,
        items: [
          TitledNavigationBarItem(title: Text( 'Anasayfa' ), icon: Icon(Icons.home )),
          TitledNavigationBarItem(title: Text('Dersler'),icon: Icon(Icons.book ) ),
          TitledNavigationBarItem(title: Text('Ödevler'),icon: Icon(Icons.bookmark )  ),
          TitledNavigationBarItem(title: Text('Ara'), icon: Icon(Icons.search )),
        ],


      ),
    );
  }
}



