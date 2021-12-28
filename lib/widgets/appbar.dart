import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:titled_navigation_bar/titled_navigation_bar.dart';


class appbar extends StatelessWidget with PreferredSizeWidget{
  String? title;
  @override
  Widget build(BuildContext context) {
    return  AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),

      ),
      elevation: 0.1,
      backgroundColor: Colors.white,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.deepOrange),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new IconButton(
            alignment: Alignment.center,
            icon: new Icon(Icons.school, color: Colors.deepOrange,),
            onPressed: () {},
          ),
          Text('Özel Dersler Koleji', style: TextStyle(color: Colors.black),)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}