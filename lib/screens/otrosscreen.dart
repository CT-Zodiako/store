import 'package:flutter/material.dart';

class OtrosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.keyboard_backspace),
            iconSize: 20.0,
            color: Colors.deepPurple,
            onPressed: () {
              Navigator.popAndPushNamed(context, 'home');
            },
          );
        }),
        toolbarHeight: 80,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'OTROS',
              style: TextStyle(color: Colors.deepPurple),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 05.0,
                  ),
                  height: size.height * 0.33,
                  width: size.width * 0.40,
                  alignment: Alignment.topLeft,
                  child: Column(children: [
                    Image.asset(
                      "assets/tablet.jpg",
                      fit: BoxFit.cover,
                      // width: 160,
                      height: 210,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ipad Pro 2020',
                    ),
                    Text(
                      'Costo: 4.345.000',
                      style: TextStyle(color: Colors.deepPurple),
                    )
                  ]),
                ),
                onTap: () {},
              ),
              InkWell(
                child: Container(
                    margin: EdgeInsets.only(
                      top: 05.0,
                    ),
                    height: size.height * 0.33,
                    width: size.width * 0.40,
                    alignment: Alignment.centerLeft,
                    child: Column(children: [
                      Image.asset(
                        "assets/impresora.jpg",
                        fit: BoxFit.cover,
                        // width: 160,
                        height: 210,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Impresora Lenovo'),
                      Text(
                        'Costo: 1.399.000',
                        style: TextStyle(color: Colors.deepPurple),
                      )
                    ])),
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 25.0,
                  ),
                  height: size.height * 0.33,
                  width: size.width * 0.40,
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/pantalla.jpg",
                        fit: BoxFit.cover,
                        //width: 160,
                        //height: 550,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Monitor MSI 144" '),
                      Text(
                        'Costo: 3.000.000',
                        style: TextStyle(color: Colors.deepPurple),
                      )
                    ],
                  ),
                ),
                onTap: () {},
              ),
              InkWell(
                child: Container(
                    margin: EdgeInsets.only(
                      top: 25.0,
                    ),
                    height: size.height * 0.33,
                    width: size.width * 0.40,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/combo.jpg",
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Combo Genius'),
                        Text(
                          'costo: 100.000',
                          style: TextStyle(color: Colors.deepPurple),
                        )
                      ],
                    )),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
