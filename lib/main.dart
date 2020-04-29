import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('Sitar'),
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: null,
            icon: Icon(
              Icons.add_shopping_cart,
              color: Colors.white70,
            ),
            label: Text(
              'Cart',
              style: TextStyle(
                color: Colors.amber[600],
              ),
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[900],
              ),
              child: Text(
                'Sitar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.menu),
              title: Text('Menu'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Account Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      //cart
    );
  }
}
