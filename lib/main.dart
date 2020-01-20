import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/Pages/CreditCardPage.dart';
import 'package:flutter_login_page_ui/Pages/Home.dart';
import 'package:flutter_login_page_ui/Pages/Login.dart';
import 'package:flutter_login_page_ui/Pages/Settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
        '/settings/creditcard': (context) => CreditCardPage()
      },
      initialRoute: '/login',
    );
  }
}
