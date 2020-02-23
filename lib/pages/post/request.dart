import 'package:flutter/material.dart';

class RequestBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      body: Container(
        child: Center(
          child: Text("Request",
            style: TextStyle(color: Colors.white, fontSize: 24),),
        ),
      ),
    );
  }
}