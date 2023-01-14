import 'package:flutter/material.dart';

import '../behaviors/hiddenScrollBehavior.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car's Rental"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ScrollConfiguration(
          behavior: HiddenScrollBehavior(),
          child: Form(
            child: ListView(
              children: <Widget>[
                Image.asset(
                  'assets/logo.png',
                  width: 100,
                  alignment: Alignment.center,
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 10.0)),
                Image.asset(
                  'assets/principal.jpg',
                  width: 80,
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 22.0),
                  child: Text(
                    'Bienvenido',
                    style: TextStyle(
                        color: Color.fromARGB(255, 7, 25, 182), fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                TextButton(
                  child: Text('¿Olvidaste tu Contraseña?'),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/forgotpassword');
                  },
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.account_circle),
      ),
      persistentFooterButtons: <Widget>[
        TextButton(
          onPressed: () {
            //Navigator.of(context).pop();
            Navigator.of(context).pushNamed('/register');
          },
          child: Text("¿No tienes Cuenta? Regístrate"),
        )
      ],
    );
  }
}
