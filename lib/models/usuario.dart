// To parse this JSON data, do
//
//     final usuario = usuarioFromMap(jsonString);

import 'dart:convert';

class Usuario {
  Usuario({required this.nameUser, required this.photo, this.id});

  String nameUser;
  String photo;
  String? id;

  factory Usuario.fromJson(String str) => Usuario.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
        nameUser: json["name_user"],
        photo: json["photo"],
      );

  Map<String, dynamic> toMap() => {
        "name_user": nameUser,
        "photo": photo,
      };

  Usuario copy() =>
      Usuario(nameUser: this.nameUser, photo: this.photo, id: this.id);
}
