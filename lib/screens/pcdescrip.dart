import 'package:flutter/material.dart';

class PcDescrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                Navigator.popAndPushNamed(context, 'pc');
              },
            );
          },
        ),
        toolbarHeight: 100,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Portatil ASUS M5ASE',
              style: TextStyle(color: Colors.deepPurple),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 30),
              //height: 100,
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      'assets/portatiluno.jpg',
                      fit: BoxFit.cover,
                    ),
                    width: 210,
                    height: 240,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 220,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Computador Portátil ASUS 14 Pulgadas IdeaPad 3 - Intel Core i5 - RAM 8GB - Disco SSD 256GB - Negro',
                            style: TextStyle(fontSize: 20),
                          ),
                        ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 220,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Costo: 4.000.000'),
                      enabled: false,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 220,
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Color: Negro'),
                      enabled: false,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    child: Text('Agregar al Carrito'),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, 'addcarrito');
                      print('{"id_compra": "N3RzLLkOEXLVJeXcN9u"}');
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(100, 45),
                        primary: Colors.deepPurple,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(5))),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
