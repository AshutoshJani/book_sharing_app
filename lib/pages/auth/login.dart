import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final loginController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text("Login"),
            TextField(
              controller: loginController,
            ),
            RaisedButton(
              color: Color.fromRGBO(255, 94, 94, 1),
            ),
          ],
        ),
      ),
    );
  }
}
