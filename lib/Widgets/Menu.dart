import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login_page_ui/Widgets/MenuTile.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_login_page_ui/Models/Menu.dart';

Future<Stream<MenuList>> fetchMenu() async {
  final client = new http.Client();
  final streamedRest = await client.send(
      http.Request('get', Uri.parse('http://192.168.0.108:8080/dashboard')));
  return streamedRest.stream
      .transform(utf8.decoder)
      .transform(json.decoder)
      .expand((data) => (data as List))
      .map((data) => MenuList.fromJson(data));
}

class MenuListWidgetState extends State<MenuListWidget> {
  List<MenuList> _menu = <MenuList>[];

  @override
  void initState() {
    super.initState();
    listenMenu();
  }

  void listenMenu() async {
    final Stream<MenuList> stream = await fetchMenu();
    stream.listen((MenuList menu) => setState(() => _menu.add(menu)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      height: MediaQuery.of(context).size.height * 0.35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _menu.length,
        itemBuilder: (context, index) => MenuTile(_menu[index]),
      ),
    );
  }
}

class MenuListWidget extends StatefulWidget {
  @override
  createState() => MenuListWidgetState();
}
