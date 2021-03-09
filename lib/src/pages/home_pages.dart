import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static final String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferencias de Usuarios"),
      ),
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
}
