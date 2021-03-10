import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/home_pages.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/menu-img.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.pages, color: Colors.blueAccent),
            title: Text("Home"),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.party_mode, color: Colors.blueAccent),
            title: Text("Party Mode"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people, color: Colors.blueAccent),
            title: Text("People"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.blueAccent),
            title: Text("Settings"),
            onTap: () {
              //Esta funcion saca todos los views del stack
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
