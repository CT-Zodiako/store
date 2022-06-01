import 'package:duo/screens/screens.dart';
import 'package:duo/services/services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CheckAuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 11, 53),
      body: Center(
          child: FutureBuilder(
              future: authService.readToken(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData)
                  return Center(
                      child: CircularProgressIndicator(
                          color: Color.fromARGB(255, 195, 97, 212)));
                if (snapshot.data == '') {
                  Future.microtask(() {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => ConectScreen(),
                            transitionDuration: Duration(seconds: 0)));
                  });
                } else {
                  Future.microtask(() {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (_, __, ___) => HomeScreen(),
                            transitionDuration: Duration(seconds: 0)));
                  });
                }

                return Container();
              })),
    );
  }
}
