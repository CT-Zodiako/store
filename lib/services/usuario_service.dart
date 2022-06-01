import 'dart:convert';

import 'package:duo/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class UsuarioService extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-87ddf-default-rtdb.firebaseio.com';

  final List<Usuario> user = [];
  Usuario? selectedUsuario;

  bool isLoading = true;

  UsuarioService() {
    this.loadUser();
  }

  Future loadUser() async {
    this.isLoading = true;
    notifyListeners();

    final url = Uri.https(_baseUrl, 'usuario.json');
    final resp = await http.get(url);

    final Map<String, dynamic> usuarioMap = json.decode(resp.body);

    usuarioMap.forEach((key, value) {
      final userTemp = Usuario.fromMap(value);
      userTemp.id = key;
      this.user.add(userTemp);
    });

    this.isLoading = false;
    notifyListeners();

    return this.user;
  }
}
