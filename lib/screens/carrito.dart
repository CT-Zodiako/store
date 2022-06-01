import 'package:flutter/material.dart';

class Carrito extends StatelessWidget {
  const Carrito({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                'CARRITO',
                style: TextStyle(color: Colors.deepPurple),
              )
            ],
          ),
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(color: Colors.white),
            child: ListView(children: [
              _CreateTitulo(),
              _CreateSubtitulo(),
              _CreateEnviar(),
            ])));
  }
}

class _CreateEnviar extends StatelessWidget {
  const _CreateEnviar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100),
      child: ElevatedButton(
        child: Text('Comprar'),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.grey,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5)),
        ),
      ),
    );
  }
}

class _CreateTitulo extends StatelessWidget {
  const _CreateTitulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      " Carrito Vacio",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 35.0,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}

class _CreateSubtitulo extends StatelessWidget {
  const _CreateSubtitulo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          "No tienes nada en tu carrito mira nuestros productos no te arrepentiras! ",
          style: TextStyle(
              color: Color.fromARGB(255, 68, 65, 65),
              fontSize: 19.0,
              fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}
