import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../Models/Menu.dart';

class MenuTile extends StatelessWidget {
  final MenuList _menu;
  MenuTile(this._menu);

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
            width: MediaQuery.of(context).size.width * 0.9 ,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                          spreadRadius: 1.0)
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: Image.network(
                    _menu.thumbnailUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.black])),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Cardápio do dia',
                        style: TextStyle(fontSize: 25.0, color: Colors.white, ),
                      ),
                      Text(
                        "${_menu.company}",
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            )),
      );
}
