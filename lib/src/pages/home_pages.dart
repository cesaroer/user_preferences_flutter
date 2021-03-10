import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  static final String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferencias de Usuarios"),
      ),
      drawer: _crearMenu(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Color Secundario:"),
          Divider(),
          Text("Genero:"),
          Divider(),
          Text("Nombre Usuario:"),
          Divider(),
        ],
      ),
    );
  }

  //Este es el hamburguer menu
  Drawer _crearMenu(BuildContext context) {
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
