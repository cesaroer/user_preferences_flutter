import 'package:flutter/material.dart';
import 'package:preferencias_usuario/src/Shared_prefs/preferencias_usuario.dart';
import 'package:preferencias_usuario/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = "settings";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool colorSecundario;
  int genero = 1;
  String nombre = "Pedro";

  TextEditingController textEditingController;
  final prefs = new PreferenciasUsuario();

  @override
  void initState() {
    super.initState();
    prefs.ultimaPagina = SettingsPage.routeName;
    genero = prefs.genero;
    colorSecundario = prefs.colorSecundario;
    textEditingController = TextEditingController(text: prefs.nombreUsuario);
  }

  _setSelectedRadio(int valor) {
    prefs.genero = valor;
    genero = valor;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ajustes"),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Settings",
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: colorSecundario,
            title: Text("Color Secundario "),
            onChanged: (value) {
              setState(() {
                colorSecundario = value;
                prefs.colorSecundario = colorSecundario;
              });
            },
          ),
          RadioListTile(
            value: 1,
            title: Text("Masculino"),
            groupValue: genero,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
            value: 2,
            title: Text("Femenino"),
            groupValue: genero,
            onChanged: _setSelectedRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: "nombre",
                helperText: "nombre de persona usando el teléfono",
              ),
              onChanged: (value) {
                setState(() {
                  prefs.nombreUsuario = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
