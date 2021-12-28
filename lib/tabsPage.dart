
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';
import 'package:wifikir_start/navbar.dart';
import 'package:wifikir_start/widgets/appbar.dart';
import 'package:wifikir_start/widgets/bottomNavbar.dart';
import 'package:wifikir_start/widgets/drawer.dart';


class tabsPage extends StatelessWidget {
  const tabsPage();
//tabbar
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(null),
            onPressed: () => Navigator.of(context).pop(),

          ),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TabBar(
                tabs: [Tab(
                  text:'Dün' ,
                ),
                  Tab(
                    text: 'Bugün',
                  ),
                  Tab(
                    text: 'Yarın',
                  ),
//                       DropdownButton<String>(
//                         hint:Text("Select item"),
//                         disabledHint:Text("Disabled"),
//                         elevation: 8,
//                         style:TextStyle(color:Colors.black, fontSize: 16,),
//                         icon: Icon(Icons.arrow_drop_down_circle),
//                         iconDisabledColor: Colors.red,
//                         iconEnabledColor: Colors.green,
//                         isExpanded: true,
//                         dropdownColor: Colors.white,
//                         focusColor: Colors.blueGrey,
//                         value: dropdownValue,
// //  icon: const Icon(Icons.arrow_downward),
//                         iconSize: 26.0,
// // elevation: 16,
// // dropdownColor: Colors.black26,
// // style: const TextStyle(fontSize: 18, color: Colors.white),
//                         underline: Container(
//                           height: 2,
//                           color: Colors.blue,
//                         ),
//                         onChanged: (String? newValue) {
//                           setState(() {
//                             dropdownValue = newValue!;
//                           });
//                         },
//                         items: <String>[
//                           '08/11',
//                           '14/11',
//                           '21/11',
//                           '28/11'
//                         ].map<DropdownMenuItem<String>>((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,alignment: Alignment.center,
//                             child: Text(value ),
//                           );
//                         }).toList(),
//                       ),
                ],
              ),
              //  ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IncomingPage(title: ''),
            OutgoingPage(),
            MissedPage()
          ],
        ),
      ),
    );
  }
}
//tab pages
//dün
class tab1Page extends StatefulWidget {
  tab1Page({ Key? key,  required this.title}) : super(key: key);
  final String title;
  @override
  _tab1PageState createState() => _tab1PageState();
}
class _tab1PageState extends State<tab1Page>
    with AutomaticKeepAliveClientMixin<tab1Page> {
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

//bugün
class tab2Page extends StatefulWidget {
  @override
  _tab2PageState createState() => _tab2PageState();
}

class _tab2PageState extends State<tab2Page>
    with AutomaticKeepAliveClientMixin<tab2Page> {

  late bool isSelected=false;late bool isSelected2=false;
  late bool isSelected3=false;late bool isSelected4=false;late bool isSelected5=false;
  late bool isSelected6=false;
  late bool _visibled=false;  late bool _visibled2=false;  late bool _visibled3=false;
  late bool _visibled4=false; late bool _visibled5=false; late bool _visibled6=false;
  late bool _icon1=true;  late bool _icon2=true;  late bool _icon3=true;
  late bool _icon4=true;  late bool _icon5=true;  late bool _icon6=true;
  @override
  Widget build(BuildContext context) {
    var title = ["TARİH","COGRAFYA","MATEMATİK","GEOMETRİ","EDEBİYAT","FİZİK"];
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection:Axis.vertical ,
        child:Column(

          // Divider(color: Colors.blue, indent: 172.0, height: 4.0),
          children:<Widget>[

            Card(
              color:isSelected5? Colors.black:Colors.white,
              child: ListTile(

                onTap: () {
                  setState(
                        () {
                      _visibled5 = !_visibled5;
                      isSelected5 = !isSelected5;
                    },
                  );
                },
                // selected:true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.black))),
                  child: Text(
                    title[4].substring(0,3),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  "Osmanlı Devleti K.M",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: <Widget>[
                    // Expanded(
                    //     flex: 11,
                    //     child: Container(
                    //       child: LinearProgressIndicator(
                    //           backgroundColor:
                    //               Color.fromRGBO(209, 224, 224, 0.2),
                    //           value: 0.66,
                    //           valueColor:
                    //               AlwaysStoppedAnimation(Colors.green)),
                    //     )),
                    Expanded(
                      flex: 4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Temel",
                              style: TextStyle(color: Colors.black38))),
                    ),
                  ],
                ),
                trailing:
                Visibility(
                  visible: _visibled5,
                  child:
                  IconButton(
                    icon: Icon(Icons.check),
                    color: (_icon5) ?  Colors.green : Colors.white,
                    onPressed: () {
                      setState(() {
                        _visibled5 = !_visibled5;
                        //  _icon5 = !_icon5;
                      });
                    },
                  ),
                ),
              ),
            ),
            Card(
              color:isSelected5? Colors.black:Colors.white,
              child: ListTile(

                onTap: () {
                  setState(
                        () {
                      _visibled5 = !_visibled5;
                      isSelected5 = !isSelected5;
                    },
                  );
                },
                // selected:true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.black))),
                  child: Text(
                    title[4].substring(0,3),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  "Osmanlı Devleti K.M",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: <Widget>[
                    // Expanded(
                    //     flex: 11,
                    //     child: Container(
                    //       child: LinearProgressIndicator(
                    //           backgroundColor:
                    //               Color.fromRGBO(209, 224, 224, 0.2),
                    //           value: 0.66,
                    //           valueColor:
                    //               AlwaysStoppedAnimation(Colors.green)),
                    //     )),
                    Expanded(
                      flex: 4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Temel",
                              style: TextStyle(color: Colors.black38))),
                    ),
                  ],
                ),
                trailing:
                Visibility(
                  visible: _visibled5,
                  child:
                  IconButton(
                    icon: Icon(Icons.check),
                    color: (_icon5) ?  Colors.green : Colors.white,
                    onPressed: () {
                      setState(() {
                        _visibled5 = !_visibled5;
                        //  _icon5 = !_icon5;
                      });
                    },
                  ),
                ),
              ),
            ),
            Card(
              color:isSelected5? Colors.black:Colors.white,
              child: ListTile(

                onTap: () {
                  setState(
                        () {
                      _visibled5 = !_visibled5;
                      isSelected5 = !isSelected5;
                    },
                  );
                },
                // selected:true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.black))),
                  child: Text(
                    title[4].substring(0,3),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  "Osmanlı Devleti K.M",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: <Widget>[
                    // Expanded(
                    //     flex: 11,
                    //     child: Container(
                    //       child: LinearProgressIndicator(
                    //           backgroundColor:
                    //               Color.fromRGBO(209, 224, 224, 0.2),
                    //           value: 0.66,
                    //           valueColor:
                    //               AlwaysStoppedAnimation(Colors.green)),
                    //     )),
                    Expanded(
                      flex: 4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Temel",
                              style: TextStyle(color: Colors.black38))),
                    ),
                  ],
                ),
                trailing:
                Visibility(
                  visible: _visibled5,
                  child:
                  IconButton(
                    icon: Icon(Icons.check),
                    color: (_icon5) ?  Colors.green : Colors.white,
                    onPressed: () {
                      setState(() {
                        _visibled5 = !_visibled5;
                        //  _icon5 = !_icon5;
                      });
                    },
                  ),
                ),
              ),
            ),
            Card(
              color:isSelected5? Colors.black:Colors.white,
              child: ListTile(

                onTap: () {
                  setState(
                        () {
                      _visibled5 = !_visibled5;
                      isSelected5 = !isSelected5;
                    },
                  );
                },
                // selected:true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.black))),
                  child: Text(
                    title[4].substring(0,3),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  "Osmanlı Devleti K.M",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: <Widget>[
                    // Expanded(
                    //     flex: 11,
                    //     child: Container(
                    //       child: LinearProgressIndicator(
                    //           backgroundColor:
                    //               Color.fromRGBO(209, 224, 224, 0.2),
                    //           value: 0.66,
                    //           valueColor:
                    //               AlwaysStoppedAnimation(Colors.green)),
                    //     )),
                    Expanded(
                      flex: 4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Temel",
                              style: TextStyle(color: Colors.black38))),
                    ),
                  ],
                ),
                trailing:
                Visibility(
                  visible: _visibled5,
                  child:
                  IconButton(
                    icon: Icon(Icons.check),
                    color: (_icon5) ?  Colors.green : Colors.white,
                    onPressed: () {
                      setState(() {
                        _visibled5 = !_visibled5;
                        //  _icon5 = !_icon5;
                      });
                    },
                  ),
                ),
              ),
            ),
            Card(
              color:isSelected5? Colors.black:Colors.white,
              child: ListTile(

                onTap: () {
                  setState(
                        () {
                      _visibled5 = !_visibled5;
                      isSelected5 = !isSelected5;
                    },
                  );
                },
                // selected:true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.black))),
                  child: Text(
                    title[4].substring(0,3),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  "Osmanlı Devleti K.M",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: <Widget>[
                    // Expanded(
                    //     flex: 11,
                    //     child: Container(
                    //       child: LinearProgressIndicator(
                    //           backgroundColor:
                    //               Color.fromRGBO(209, 224, 224, 0.2),
                    //           value: 0.66,
                    //           valueColor:
                    //               AlwaysStoppedAnimation(Colors.green)),
                    //     )),
                    Expanded(
                      flex: 4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Temel",
                              style: TextStyle(color: Colors.black38))),
                    ),
                  ],
                ),
                trailing:
                Visibility(
                  visible: _visibled5,
                  child:
                  IconButton(
                    icon: Icon(Icons.check),
                    color: (_icon5) ?  Colors.green : Colors.white,
                    onPressed: () {
                      setState(() {
                        _visibled5 = !_visibled5;
                        //  _icon5 = !_icon5;
                      });
                    },
                  ),
                ),
              ),
            ),
            Card(
              color:isSelected5? Colors.black:Colors.white,
              child: ListTile(

                onTap: () {
                  setState(
                        () {
                      _visibled5 = !_visibled5;
                      isSelected5 = !isSelected5;
                    },
                  );
                },
                // selected:true,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
                leading: Container(
                  padding: EdgeInsets.only(right: 12.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.black))),
                  child: Text(
                    title[4].substring(0,3),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(
                  "Osmanlı Devleti K.M",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Row(
                  children: <Widget>[
                    // Expanded(
                    //     flex: 11,
                    //     child: Container(
                    //       child: LinearProgressIndicator(
                    //           backgroundColor:
                    //               Color.fromRGBO(209, 224, 224, 0.2),
                    //           value: 0.66,
                    //           valueColor:
                    //               AlwaysStoppedAnimation(Colors.green)),
                    //     )),
                    Expanded(
                      flex: 4,
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Temel",
                              style: TextStyle(color: Colors.black38))),
                    ),
                  ],
                ),
                trailing:
                Visibility(
                  visible: _visibled5,
                  child:
                  IconButton(
                    icon: Icon(Icons.check),
                    color: (_icon5) ?  Colors.green : Colors.white,
                    onPressed: () {
                      setState(() {
                        _visibled5 = !_visibled5;
                        //  _icon5 = !_icon5;
                      });
                    },
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );

  }

  @override
  bool get wantKeepAlive => true;
}

//yarın
class tab3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(Icons.call_missed_outgoing, size: 350);
  }
}

//list


