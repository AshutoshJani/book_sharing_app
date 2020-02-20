import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final locController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Align(
                alignment: Alignment.center,
                child: Text("Register")
            ),
            TextField(
              controller: nameController,
            ),
            TextField(
              controller: phoneController,
            ),
            TextField(
              controller: emailController,
            ),
            DropdownButton<String>(
              items: <String>['Vadodara', 'Ahmedabad', 'Surat', 'Gandhinagar'].map((String value) {
                return new DropdownMenuItem<String>(
                  
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            )
          ],
        ),
      ),
    );
  }
}
