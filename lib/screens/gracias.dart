import 'dart:ui';

import 'package:flutter/material.dart';

class Gracias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 85,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GRACIAS',
              style: TextStyle(color: Colors.deepPurple),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'COMPRA FINALIZADA, GRACIAS POR SU COMPRA',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: const EdgeInsets.only(top: 110),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'home');
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 45),
                    primary: Colors.deepPurple,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5),
                    )),
                child: Text('SEGUIR COMPRANDO')),
          )
        ],
      ),
    );
  }
}
