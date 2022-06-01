import 'package:flutter/material.dart';

class AutBackgraund extends StatelessWidget {
  const AutBackgraund({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 38, 11, 53),
      width: double.infinity,
      height: double.infinity,
      child: Column(children: [
        const SizedBox(
          height: 50,
        ),
        _ImgDup(),
        _TxtBienvenido(),
        _BottonsInicio()
      ]),
    );
  }
}

class _ImgDup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/DUO.png'), fit: BoxFit.cover)),
    );
  }
}

class _TxtBienvenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.31,
      child: Column(
        children: [
          Text(
            'Bienvenido a DUO',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 68,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Busca a otras personas en tus videojuegos y trollea con ellos',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class _BottonsInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black12,
      width: double.infinity,
      height: size.height * 0.23,
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Color.fromARGB(252, 151, 146, 177),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                  ),
                )),
            child: const SizedBox(
                width: double.infinity,
                height: 100,
                child: Center(child: Text('Crear Cuenta'))),
            onPressed: () {},
          ),
          const SizedBox(
            height: 4,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Color.fromARGB(249, 32, 25, 77),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                  ),
                )),
            child: const SizedBox(
                width: double.infinity,
                height: 100,
                child: Center(child: Text('Crear Cuenta'))),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
