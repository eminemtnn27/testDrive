// import 'package:flutter/material.dart';
//
// import 'Home.dart';
//
// class a extends StatefulWidget {
//   @override
//   _aState createState() => _aState();
// }
//
// class _aState extends State<a>  {
//   var refreshKey = GlobalKey<RefreshIndicatorState>();
//   List<String> tabsText = ["Top","Outdoor","Indoor", "Seeds", "Flowers"];
//
//   Future<Null> refreshList() async {
//     refreshKey.currentState?.show(atTop: false);
//     await Future.delayed(Duration(seconds: 2));
//
//     //network call and setState so that view will render the new values
//     print("refresh");
//   }
//   tabMaker(){
//     List<Tab> tabs = [];
//     for (var i = 0; i < tabsText.length; i++) {
//       tabs.add(Tab(text: tabsText[i],));
//     };
//     return tabs;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: new DefaultTabController(
//           length: 5,
//           child: Scaffold(
//             appBar: AppBar(
//               title: Text("Pull to refresh"),
//               bottom: new TabBar(
//                 isScrollable: true,
//                 labelColor: Colors.white,
//                 tabs: tabMaker(),
//               ),
//             ),
//             body: new Column(
//               children: <Widget>[
//                 new Expanded(
//                   child: new TabBarView(
//                     children: [
//                       Tab(
//                         child: new RefreshIndicator(
//                           child: new ListView(
//                             children: <Widget>[
//                               new Column(
//                                 children: <Widget>[
//                                   new Center(
//                                     child: new Text("Demo",
//                                         style: new TextStyle(fontSize: 20.0)),
//                                   )
//                                 ],
//                               )
//                             ],
//                           ),
//                           onRefresh: refreshList,
//                           key: refreshKey,
//                         ),
//                       ),
//                       Tab(
//                         child:
//                         new Text("Demo", style: new TextStyle(fontSize: 20.0)),
//                       ),
//                       Tab(
//                         child:
//                         new Text("Demo", style: new TextStyle(fontSize: 20.0)),
//                       ),
//                       Tab(
//                         child:
//                         new Text("Demo", style: new TextStyle(fontSize: 20.0)),
//                       ),
//                       Tab(
//                         child:
//                         new Text("Demo", style: new TextStyle(fontSize: 20.0)),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }