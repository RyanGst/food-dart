import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/Widgets/Drawer.dart';
import 'package:flutter_login_page_ui/Widgets/Menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Page',
            style: TextStyle(color: Colors.black.withOpacity(0.8)),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black.withOpacity(0.8)),
        ),
        drawer: DrawerWidget(),
        body: ListView(
          children: <Widget>[
            Container(height: 300, child: MenuListWidget()),
            Container(height: 300, color: Colors.lime), 
            Container(height: 300, color: Colors.blueAccent), 
          ],
        ));
  }
}
