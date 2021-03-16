import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario {
  static final PreferenciasUsuario instancia = PreferenciasUsuario._internal();

  factory PreferenciasUsuario() {
    return instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET
  get genero {
    return _prefs.getInt("genero") ?? 1;
  }

  //SET
  set genero(int value) {
    _prefs.setInt("genero", value);
  }

  // GET color secundario
  get colorSecundario {
    return _prefs.getBool("colorSecundario") ?? false;
  }

  //SET olor secundario
  set colorSecundario(bool value) {
    _prefs.setBool("colorSecundario", value);
  }

  // GET nombre del usuario
  get nombreUsuario {
    return _prefs.getString("nombreUsuario") ?? "";
  }

  //SET nombreUsuario
  set nombreUsuario(String value) {
    _prefs.setString("nombreUsuario", value);
  }

  // GET ultimapagina
  get ultimaPagina {
    return _prefs.getString("ultimaPagina") ?? "home";
  }

  //SET ultimapagina
  set ultimaPagina(String value) {
    _prefs.setString("ultimaPagina", value);
  }
}
