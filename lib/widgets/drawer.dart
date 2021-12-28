import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/logos/edu.png"))),
              accountName: Text(
                " ",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                " ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
              ),
              //currentAccountPicture: new Image.asset(
              //    "assets/logos/edu.jpg",width: 450,
              //    alignment: Alignment.center,
              //),
            ),

            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.home,
                    ),
                    title: Text("ANASAYFA"),
                    trailing: Icon(Icons.keyboard_arrow_right),
                    onTap: () {
                      // Navigator.of(context).push(
                      // MaterialPageRoute(builder: (context) => Anasayfa()));
                    },
                  ),
                  ListTile(
                      leading: Icon(Icons.article),
                      title: Text("MAKALELER"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => Makaleler()));
                      }),
                  ListTile(
                      leading: Icon(Icons.people),
                      title: Text(
                        "YAZARLAR",
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => Yazarlar()));
                      }),
                  ListTile(
                      leading: Icon(Icons.video_collection_outlined),
                      title: Text("VİDEOLAR"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        //  Navigator.of(context).push(
                        //   MaterialPageRoute(builder: (context) => Video()));
                      }),
                  ListTile(
                      leading: Icon(Icons.chat_bubble_outline_sharp),
                      title: Text("BİZ KİMİZ"),
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => Hakkimizda()));
                      }),
                  AboutListTile(
                    applicationName: " LİSANS",
                    applicationIcon: Icon(Icons.save),
                    applicationVersion: "3.8",
                    child: Text("UYGULAMA HAKKINDA"),
                    icon: Icon(Icons.save),
                    //applicationLegalese: null,
                  )
                ],
              ),
            ),
            // FloatingActionButton.extended(
            //   label: Text(isDark ? 'Açık Tema':'Koyu Tema'),
            //   icon: Icon(isDark ? Icons.wb_sunny_outlined : Icons.bubble_chart,),
            //   onPressed: () {
            //     isDark = !isDark;
            //     darkNotifier.value = isDark;
            //   },
            //   //tooltip: 'Increment',
            //   //child: Icon(isDark ? Icons.wb_sunny_outlined : Icons.bubble_chart,),
            // ),
          ],
        ),

    );
  }
}