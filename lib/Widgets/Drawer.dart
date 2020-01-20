import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text('Header'),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, size: 30),
            title: Text('Home'),
            subtitle: Text("Ofertas para você..."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.popAndPushNamed(context, '/');
            },
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.shopping_cart, size: 30),
            title: Text('Compras'),
            subtitle: Text("Veja o que você já comprou..."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            enabled: false,
            leading: Icon(Icons.fastfood, size: 30),
            title: Text('Informação nutricional'),
            subtitle: Text("Podemos te ajudar com uma boa dieta"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings, size: 30),
            title: Text('Configurações'),
            subtitle: Text("Informações sobre sua conta"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
