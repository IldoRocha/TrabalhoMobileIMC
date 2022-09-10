import 'package:flutter/material.dart';
import '../pages/galeria_screen.dart';
import '../pages/lista.dart';

Widget MenuComponent(BuildContext context){
  return
    Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => lista(title: 'Título'))
              );
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Galeria())
              );// Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
}