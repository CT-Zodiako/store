import 'dart:ui';

import 'package:flutter/material.dart';

class Pagar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.keyboard_backspace),
              iconSize: 29.0,
              color: Colors.black,
              onPressed: () {
                Navigator.popAndPushNamed(context, 'addcarrito');
              },
            );
          },
        ),
        toolbarHeight: 85,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PAGAR ',
              style: TextStyle(color: Colors.deepPurple),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        "assets/visa.jpg",
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                        alignment: Alignment.centerRight,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Portatil ASUS M5ASE',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Numero de tarjeta'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Codigo de seguridad'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'Nombre del titular'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 20),
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Numero de identificacion'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 20),
                  child: TextFormField(
                    decoration:
                        InputDecoration(hintText: 'Agregar dirreccion destino'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 110),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'gracias');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 45),
                          primary: Colors.deepPurple,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5),
                          )),
                      child: Text('           PAGAR           ')),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
