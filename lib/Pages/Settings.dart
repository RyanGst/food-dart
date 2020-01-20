import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/Widgets/Drawer.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 200.0,
                color: Colors.blue.withOpacity(0.7),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 20.0),
                  color: Colors.white,
                  child: Center(
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Text("Cartão de Crédito"),
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/settings/creditcard');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 150.0,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://i.pravatar.cc/100'),
                backgroundColor: Colors.transparent,
              ),
            ),
          ), 
          Center(child: Text('Ara'),)
        ],
      ),
    );
  }
}
