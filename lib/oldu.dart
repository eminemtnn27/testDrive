// import 'package:flutter/material.dart';
// import 'package:wifikir_start/tabsPage.dart';
// import 'package:wifikir_start/widgets/bottomNavbar.dart';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'Home.dart';
//
// class a extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           bottom: TabBar(
//             isScrollable: true,
//             tabs: [
//               Tab(
//                 icon: Icon(Icons.directions_car),
//                 text: "Non persistent",
//               ),
//               Tab(icon: Icon(Icons.directions_transit), text: "Persistent"),
//             ],
//           ),
//           title: Text('Persistent Tab Demo'),
//         ),
//         body: TabBarView(
//           children: [
//             Page1(),
//             Page2(),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class Page1 extends StatefulWidget {
//   @override
//   _Page1State createState() => _Page1State();
// }
//
// class _Page1State extends State<Page1> {
//   List<dynamic>? list = [];
//
//   _loadList() async {
//     final response = await http
//         .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/"));
//     if (response.statusCode == 200) {
//       await Future.delayed(const Duration(seconds: 1));
//       if (mounted) {
//         setState(() {
//           list = json.decode(response.body) as List?;
//         });
//       }
//     } else {
//       throw Exception('Failed to load posts');
//     }
//   }
//
//   @override
//   void initState() {
//     _loadList();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Expanded(
//           child: ListView.builder(
//             itemCount: list!.length,
//             itemBuilder: (BuildContext context, int index) {
//               final data = list![index];
//               return ListTile(
//                 contentPadding: EdgeInsets.all(10.0),
//                 title: Text(data['title']),
//                 subtitle: Text(
//                   data['body'],
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class Page2 extends StatefulWidget {
//   @override
//   _Page2State createState() => _Page2State();
// }
//
// class _Page2State extends State<Page2>
//     with AutomaticKeepAliveClientMixin<Page2> {
//   List<dynamic>? list = [];
//
//   _loadList() async {
//     final response = await http
//         .get(Uri.parse("https://jsonplaceholder.typicode.com/photos/"));
//     if (response.statusCode == 200) {
//       await Future.delayed(const Duration(seconds: 1));
//       if (mounted) {
//         setState(() {
//           list = json.decode(response.body) as List?;
//         });
//       }
//     } else {
//       throw Exception('Failed to load posts');
//     }
//   }
//
//   @override
//   void initState() {
//     _loadList();
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     return Column(
//       children: <Widget>[
//         Expanded(
//           child: ListView.builder(
//             itemCount: list!.length,
//             itemBuilder: (BuildContext context, int index) {
//               final data = list![index];
//               return ListTile(
//                 contentPadding: EdgeInsets.all(10.0),
//                 title: Text(data['title']),
//                 trailing: Image.network(
//                   data['thumbnailUrl'],
//                   height: 20.0,
//                   width: 20.0,
//                 ),
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   bool get wantKeepAlive => true;
// }
