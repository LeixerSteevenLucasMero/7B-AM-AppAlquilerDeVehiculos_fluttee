import 'package:flutter/material.dart';

import '../behaviors/hiddenScrollBehavior.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //String _email;
  //SString _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
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

                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    'Ingrese sus Datos:',
                    style: TextStyle(
                        color: Color.fromARGB(255, 8, 19, 68), fontSize: 23),
                    textAlign: TextAlign.center,
                  ),
                ),

                TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Nombre Completo'),
                ),
                TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Ingrese su C.I.'),
                ),
                TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Ingrese su Número Telefónico'),
                ),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: 'Ingresa tu Email'),
                ),
                TextFormField(
                  obscureText: true,
                  decoration:
                      InputDecoration(labelText: 'Ingresa una Contraseña'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 35.0),
                  child: Text(
                    'Gracias por Registarte',
                    style: TextStyle(color: Color.fromARGB(255, 141, 19, 197)),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.person_add),
      ),
      persistentFooterButtons: <Widget>[
        TextButton(
          onPressed: () {
            //Navigator.of(context).pushNamed('/login');
            Navigator.of(context).pop();
          },
          child: Text('Ya Tengo una Cuenta'),
        )
      ],
    );
  }
}
