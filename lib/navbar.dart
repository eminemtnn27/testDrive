import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wifikir_start/tabsPage.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
class navbar extends StatefulWidget {
  // navbar({Key? key, this.title}) : super(key: key);
  //
  // final String? title;
  @override
  _navbarState createState() => _navbarState();
}
class nav1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  nav1() ;
  }
  }
class nav2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Icon(
          Icons.camera,
          size: 150,
        ),
      ) ;
  }
}
class nav3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Icon(
        Icons.school,
        size: 150,
      ),
    );
  }
}
class nav4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
            labelText: 'Ödev Bul',
            labelStyle: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class _navbarState extends State<navbar> {
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

void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  //  _pages.elementAt(_selectedIndex);

  });
}

@override
Widget build(BuildContext context) {

  return   TitledBottomNavigationBar(
    currentIndex: _selectedIndex, // Use this to update the Bar giving a position
    onTap: _onItemTapped,

    items: [
      TitledNavigationBarItem(title: Text( 'Anasayfa' ), icon: Icon(Icons.home )),
      TitledNavigationBarItem(title: Text('Dersler'),icon: Icon(Icons.book ) ),
      TitledNavigationBarItem(title: Text('Ödevler'),icon: Icon(Icons.bookmark )  ),
      TitledNavigationBarItem(title: Text('Ara'), icon: Icon(Icons.search )),
    ],


    ) ;
}


}