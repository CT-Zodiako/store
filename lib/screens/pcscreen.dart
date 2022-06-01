import 'package:flutter/material.dart';

class PcScreen extends StatelessWidget {
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
              'COMPUTO',
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
                      "assets/portatiluno.jpg",
                      fit: BoxFit.cover,
                      // width: 160,
                      height: 210,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Portatil ASUS M5ASE',
                    ),
                    Text(
                      'Costo: 4.000.000',
                      style: TextStyle(color: Colors.deepPurple),
                    )
                  ]),
                ),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'pcdescripcion');
                },
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
                        "assets/todoenuno.jpg",
                        fit: BoxFit.cover,
                        // width: 160,
                        height: 210,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Lenovo 24"'),
                      Text(
                        'Costo: 2.399.000',
                        style: TextStyle(color: Colors.deepPurple),
                      )
                    ])),
                onTap: () {
                  print('le estamos dando tappppppppp');
                },
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
                        "assets/mac.jpg",
                        fit: BoxFit.cover,
                        //width: 160,
                        //height: 550,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Mac air'),
                      Text(
                        'Costo: 5.000.000',
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
                          "assets/port3.jpg",
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('ACER aspire 3'),
                        Text(
                          'costo: 2.597.566',
                          style: TextStyle(color: Colors.deepPurple),
                        )
                      ],
                    )),
                onTap: () {
                  print('le estamos dando tappppppppp');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
