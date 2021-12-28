import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:wifikir_start/widgets/appbar.dart';
import 'package:wifikir_start/widgets/body.dart';
import 'package:wifikir_start/widgets/drawer.dart';

class bottomNavbar extends StatefulWidget {
 String? title;
  @override
  _bottomNavbarState createState() => _bottomNavbarState();
}
class _bottomNavbarState extends State<bottomNavbar> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    CallsPage(),
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
    });
  } @override
  Widget build(BuildContext context) {
    return  TitledBottomNavigationBar(
    currentIndex: _selectedIndex,
    onTap:   _onItemTapped,
    items: [
    TitledNavigationBarItem(title: Text('Anasayfa'), icon: Icon(Icons.home )),
    TitledNavigationBarItem(title: Text('Dersler'),icon: Icon(Icons.book ) ),
    TitledNavigationBarItem(title: Text('Ödevler'),icon: Icon(Icons.bookmark )  ),
    TitledNavigationBarItem(title: Text('Ara'), icon: Icon(Icons.search )),
    ],
    );
  }


}

class CallsPage extends StatelessWidget {

  const CallsPage();
  @override
  Widget build(BuildContext context) {
      return tab();
  }
}
// tabpanel

class tab extends StatefulWidget {
  @override
  _tabState createState() => _tabState();
}
class _tabState extends State<tab> with TickerProviderStateMixin {
  final int _startingTabCount = 4;
  List<Tab> _tabs =<Tab>[];
  late TabController _tabController;
  @override
  void initState() {
    _tabs = getTabs(_startingTabCount   );
    _tabController = getTabController();
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
         TabBar(
          // isScrollable: true,
          tabs:_tabs,
          controller: _tabController,
         ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.add),
        //     onPressed: _addAnotherTab,
        //   ),
        //   IconButton(
        //     icon: Icon(Icons.remove),
        //     onPressed: _removeTab,
        //   ),
        // ],

        ],),
      ),

      body: TabBarView(
        controller: _tabController,
        children: [
          IncomingPage(title: ''),
          OutgoingPage(),
          OutgoingPage()
        ],
      ),

    );
  }

  TabController getTabController() {
    return TabController(length: _tabs.length, vsync: this,);
  }

  Tab getTab(String widgetNumber) {
    return Tab(
      text: "$widgetNumber",
    );
  }

  List<Tab> getTabs(int _startingTabCount) {
    _tabs.clear();
    List<String> tab = ["14/12", "15/12", "16/12",];
    Lesson lesson;
     for (var _startingTabCount = 0; _startingTabCount < tab.length; _startingTabCount++) {
      _tabs.add(getTab(tab[_startingTabCount]));
      }
    return _tabs;
  }
}

class IncomingPage extends StatefulWidget {
  IncomingPage({ Key? key,  required this.title}) : super(key: key);
  final String title;
  @override
  _IncomingPageState createState() => _IncomingPageState();
}
class _IncomingPageState extends State<IncomingPage>
    with AutomaticKeepAliveClientMixin<IncomingPage> {
  int count = 10;
  final items = List<String>.generate(10000, (i) => "Call $i");
  late bool isSelected=false;late bool isSelected2=false;
  late bool isSelected3=false;late bool isSelected4=false;late bool isSelected5=false;
  late bool isSelected6=false;
  late List lessons;
  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.deepOrange))),
        child: Text(lesson.ders.substring(0,3),style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontFamily: 'TimesNewRoman')),
      ),
      title: Text(
        lesson.title,
        style: TextStyle(color: Colors.black), //fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
      onTap: () {

      },
    );

    Card makeCard(Lesson lesson) => Card(
      // elevation: 1.0,//8.0
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: makeListTile(lesson),
      ),
    );
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: lessons.length,
          itemBuilder: (BuildContext context, int index) {
            return makeCard(lessons[index]);
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class OutgoingPage extends StatefulWidget {
  @override
  _OutgoingPageState createState() => _OutgoingPageState();
}

class _OutgoingPageState extends State<OutgoingPage>
    with AutomaticKeepAliveClientMixin<OutgoingPage> {

  int count = 10;
  final items = List<String>.generate(10000, (i) => "Call $i");
  late bool isSelected=false;late bool isSelected2=false;
  late bool isSelected3=false;late bool isSelected4=false;late bool isSelected5=false;
  late bool isSelected6=false;
  late List lessons;
  @override
  void initState() {
    lessons = getLessons();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(Lesson lesson) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 12.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.deepOrange))),
        child: Text(lesson.ders.substring(0,3),style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontFamily: 'TimesNewRoman')),
      ),
      title: Text(
        lesson.title,
        style: TextStyle(color: Colors.black), //fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
      onTap: () {

      },
    );

    Card makeCard(Lesson lesson) => Card(
      // elevation: 1.0,//8.0
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: makeListTile(lesson),
      ),
    );
    return Scaffold(
      body: Container(
        // decoration: BoxDecoration(color: Color.fromRGBO(58, 66, 86, 1.0)),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: lessons.length,
          itemBuilder: (BuildContext context, int index) {
            return makeCard(lessons[index]);
          },
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class MissedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.call_missed_outgoing, size: 350);
  }
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



