import 'package:duo/screens/carrito.dart';
import 'package:duo/screens/gracias.dart';
import 'package:duo/screens/otrosscreen.dart';
import 'package:duo/screens/pagar.dart';
import 'package:duo/screens/pcdescrip.dart';
import 'package:duo/screens/screens.dart';

import 'package:duo/services/services.dart';
import 'package:duo/services/usuario_service.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => UsuarioService()),
      ChangeNotifierProvider(create: (_) => AuthService()),
    ], child: MyApp());
  }
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  static const tittle = 'Native Splash Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Duo App',
      initialRoute: 'checkauth',
      routes: {
        'home': (_) => HomeScreen(),
        'conect': (_) => ConectScreen(),
        'new_account': (_) => NewAccountScreen(),
        'pc': (_) => PcScreen(),
        'perfil': (_) => PerfilScreen(),
        'otros': (_) => OtrosScreen(),

        'carrito': (_) => Carrito(),
        'addcarrito': (_) => AddCarrito(),
        'checkauth': (_) => CheckAuthScreen(),
        'pcdescripcion': (_) => PcDescrip(),
        'pagar': (_) => Pagar(),
        'gracias': (_) => Gracias(),
      },
      scaffoldMessengerKey: NotificationsService.messengerKey,
    );
  }
}
