import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 252, 252, 252),
      appBar: AppBar(
        toolbarHeight: 85,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CATEGORIAS',
              style: TextStyle(color: Colors.deepPurple),
            )
          ],
        ),
        backgroundColor: Color.fromARGB(225, 255, 255, 255),
      ),
      body: Column(
        children: [
          InkWell(
            child: Container(
              margin: EdgeInsets.all(12),
              height: size.height * 0.25,
              width: size.width * 0.5,
              child: Image.asset(
                "assets/portatiluno.jpg",
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, 'pc');
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5))),
            child: Text(
              '   PC   ',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, 'pc');
            },
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.all(30),
              height: size.height * 0.25,
              width: size.width * 0.5,
              child: Image.asset(
                "assets/impresora.jpg",
                fit: BoxFit.cover,
              ),
            ),
            onTap: () {
              Navigator.popAndPushNamed(context, 'otros');
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(5))),
            child: Text(
              'OTROS',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.popAndPushNamed(context, 'otros');
            },
          ),
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 40)),
              Container(
                width: double.infinity,
                height: 67,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.home),
                      iconSize: 40,
                      color: Colors.deepPurple,
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'home');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.add_shopping_cart_outlined),
                      iconSize: 40,
                      color: Colors.deepPurple,
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'carrito');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.person),
                      iconSize: 40,
                      color: Colors.deepPurple,
                      onPressed: () {
                        Navigator.popAndPushNamed(context, 'perfil');
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
