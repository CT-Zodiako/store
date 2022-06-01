import 'package:duo/providers/login_form_proivder.dart';
import 'package:duo/services/services.dart';
import 'package:duo/ui/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _AutBackgraund());
  }
}

class _AutBackgraund extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(32, 39, 50, 30),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          _FormContainer(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text('Registrate',
                    style: TextStyle(
                        color: Color.fromARGB(192, 255, 253, 253),
                        fontSize: 40)),
                SizedBox(
                  height: 40,
                ),
                ChangeNotifierProvider(
                  create: (_) => LoginFormProvider(),
                  child: _LoginForm(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, 'conect'),
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all(Colors.indigo.withOpacity(0.1)),
                  shape: MaterialStateProperty.all(StadiumBorder())),
              child: Text(
                '¿Ya tienes una cuenta? INICIA SESION',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 50, 5, 129)),
              )),
          SizedBox(
            height: 60,
          ),
        ]),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Colors.red.withOpacity(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: const SizedBox(
                width: 80, height: 20, child: Center(child: Text('Conectar'))),
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'conect');
            },
          ),
          SizedBox(
            width: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 10,
                primary: Color.fromARGB(251, 187, 134, 171),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: const SizedBox(
                width: 100,
                height: 20,
                child: Center(child: Text('Crear cuenta'))),
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'new_account');
            },
          ),
        ],
      ),
    );
  }
}

class _FormContainer extends StatelessWidget {
  final Widget child;

  const _FormContainer({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: Estilosdelformulario(),
        child: this.child,
      ),
    );
  }

  BoxDecoration Estilosdelformulario() => BoxDecoration(
          color: Color.fromARGB(83, 69, 67, 71),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 15, offset: Offset(0, 5))
          ]);
}

class _LoginForm extends StatelessWidget {
  const _LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<LoginFormProvider>(context);
    return Container(
      child: Form(
          key: loginForm.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Nombres',
                    labelText: 'Nombres',
                    prefixIcon: Icons.lock_clock_outlined),
              ),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Apellidos',
                    labelText: 'Apellidos',
                    prefixIcon: Icons.lock_clock_outlined),
              ),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'ejemplocorreo@gmail.com',
                    labelText: 'Correo electronico',
                    prefixIcon: Icons.alternate_email_rounded),
                onChanged: (value) => loginForm.email = value,
                validator: (value) {
                  String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);

                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El correo no es correcto';
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                autocorrect: false,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecorations.authInputDecoration(
                    hintText: '*******',
                    labelText: 'Contraseña',
                    prefixIcon: Icons.lock_clock_outlined),
                onChanged: (value) => loginForm.password = value,
                validator: (value) {
                  if (value != null && value.length >= 6) return null;
                  return 'La contraseña debe ser minimo de 6 caracteres';
                },
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'Repetir Contraseña',
                    labelText: 'Repetir Contraseña',
                    prefixIcon: Icons.lock_clock_outlined),
              ),
              MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  disabledColor: Colors.grey,
                  elevation: 0,
                  color: Colors.deepPurple,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      child: Text(
                        loginForm.isLoading ? 'Registrando...' : 'Registrar',
                        style: TextStyle(color: Colors.white),
                      )),
                  onPressed: loginForm.isLoading
                      ? null
                      : () async {
                          FocusScope.of(context).unfocus();
                          final authService =
                              Provider.of<AuthService>(context, listen: false);
                          if (!loginForm.isValidForm()) return;
                          loginForm.isLoading = true;

                          //Todo validar si el login es correco
                          final String? errorMessage = await authService
                              .createUser(loginForm.email, loginForm.password);
                          if (errorMessage == null) {
                            Navigator.pushReplacementNamed(context, 'home');
                          } else {
                            ///todo mostrar error en pantalla
                            print(errorMessage);
                            loginForm.isLoading = false;
                          }
                        })
            ],
          )),
    );
  }
}
