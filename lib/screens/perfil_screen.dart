
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/auth_servis.dart';
import '../ui/input_decoration.dart';

class PerfilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _Opciones(),
      ],
    ));
  }
}

class _Opciones extends StatelessWidget {
  const _Opciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height * 0.9,
        child: Column(
          children: [
            SizedBox(height: 150),
            Text(
              'Javier Urrutia',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 50),
            _LoginForm(),
            SizedBox(height: 50),
            _ExitSeccion()
          ],
        ));
  }
}

class _ExitSeccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authServices = Provider.of<AuthService>(context, listen: false);
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'SEGUIR COMPRANDO',
                    style: TextStyle(color: Colors.white),
                  )),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'home');
              }),
          SizedBox(height: 50),
          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Cerrar Sesion',
                    style: TextStyle(color: Colors.white),
                  )),
              onPressed: () {
                authServices.logout();
                Navigator.pushReplacementNamed(context, 'conect');
              }),
        ],
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                enabled: false,
                style: TextStyle(color: Colors.white),
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Dirreccion',
                    labelText: 'Dirreccion: calle 60 bn # 15-39 Arboleda',
                    prefixIcon: Icons.add_location),
              ),
              TextFormField(
                enabled: false,
                style: TextStyle(color: Colors.white),
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'ejemplocorreo@gmail.com',
                    labelText: 'javierurrutia@unimayor.edu.co',
                    prefixIcon: Icons.alternate_email_rounded),
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);

                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El correo no es correcto';
                },
              ),
            ],
          )),
    );
  }
}
