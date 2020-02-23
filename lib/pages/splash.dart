import 'package:flutter/material.dart';
import 'package:book_sharing_app/pages/auth/login.dart';
import 'package:book_sharing_app/pages/auth/register.dart';
import 'package:book_sharing_app/pages/home_page/home_screen.dart';

import 'auth/login.dart';
import 'auth/login.dart';
import 'auth/register.dart';

class Splash extends StatelessWidget {
//  final controller = PageController(
//    initialPage: 1,
//  );
  @override
  Widget build(BuildContext context) {
    return PageView(
//      controller: controller,
      children: <Widget>[
        Welcome(),
        About(),
        JoinUs(),
      ],
    );
  }
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Welcome To The World Of Book Sharing",
            style:
                TextStyle(fontSize: 20, color: Color.fromRGBO(20, 68, 94, 1)),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Share Your Read Books To Someone Who Wants To Read",
            style:
                TextStyle(fontSize: 20, color: Color.fromRGBO(20, 68, 94, 1)),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

class JoinUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 200),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                "Take Your First Towards This Cause",
                style: TextStyle(
                    fontSize: 20, color: Color.fromRGBO(20, 68, 94, 1)),
                textAlign: TextAlign.center,
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Register()));
                      },
                      child: Text("Register"),
                      textColor: Colors.white,
                      color: Color.fromRGBO(255, 94, 94, 1),
                      splashColor: Color.fromRGBO(255, 190, 181, 1),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text("Login"),
                      textColor: Colors.white,
                      color: Color.fromRGBO(255, 94, 94, 1),
                      splashColor: Color.fromRGBO(255, 190, 181, 1),
                    ),
                  ],
                )),
//            Padding(
//              padding: const EdgeInsets.only(top: 10.0),
//              child: RaisedButton(
//                onPressed: (){
//                  Navigator.push(context,
//                      MaterialPageRoute(
//                          builder: (context) => Register()
//                      ));
//                },
//                child: Text("Register"),
//                textColor: Colors.white,
//                color: Color.fromRGBO(255, 94, 94, 1),
//                splashColor: Color.fromRGBO(255, 190, 181, 1),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
