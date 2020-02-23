import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:date_format/date_format.dart';

import '../home_page/home_screen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final scafKey = new GlobalKey<ScaffoldState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController collegeController = TextEditingController();
  TextEditingController fieldController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController semController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController locController = TextEditingController();

  var dropDownValue = 'Vadodara';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafKey,
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text("Register"),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.maxHeight),
            child: Container(
              color: Colors.white,
              child: Form(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: "Name",
                          labelStyle: TextStyle(color: Colors.red),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: phoneController,
                        decoration: InputDecoration(
                          labelText: "Phone",
                          labelStyle: TextStyle(color: Colors.red),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: collegeController,
                        decoration: InputDecoration(
                          labelText: "College Name",
                          labelStyle: TextStyle(color: Colors.red),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: fieldController,
                        decoration: InputDecoration(
                          labelText: "Field",
                          labelStyle: TextStyle(color: Colors.red),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
//              margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
//                        width: 150,
                                child: TextFormField(
                                  controller: yearController,
                                  decoration: InputDecoration(
                                    labelText: "Year",
                                    labelStyle: TextStyle(color: Colors.red),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
//                        width: 150,
                                child: TextFormField(
                                  controller: semController,
                                  decoration: InputDecoration(
                                    labelText: "Semester",
                                    labelStyle: TextStyle(color: Colors.red),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.red),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email ID",
                          labelStyle: TextStyle(color: Colors.red),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.red),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                        ),
                      ),
                    ),
                    DropdownButton<String>(
                      value: dropDownValue,
                      style: TextStyle(color: Colors.black),
                      items: <String>[
                        'Vadodara',
                        'Ahmedabad',
                        'Surat',
                        'Gandhinagar'
                      ].map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(
                            value,
                          ),
                        );
                      }).toList(),
                      onChanged: (String newValue) {
                        setState(() {
                          dropDownValue = newValue;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Colors.red,
                        onPressed: _submit,
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  void _submit() {
    var name = nameController.text.toString();
    var phone = phoneController.text.toString();
    var email = emailController.text.toString();
    var password = passwordController.text.toString();
    var loc = dropDownValue;
    var collegeName = collegeController.text.toString();
    var year = yearController.text.toString();
    var sem = semController.text.toString();
    var field = fieldController.text.toString();

    var timeKey = new DateTime.now();
    var formatedDate = formatDate(timeKey, [dd, '-', mm, '-', yyyy]);
//    var formattedTime = formatDate(timeKey, [HH, ':', nn, ':', ss]);
    DatabaseReference _registerRef = FirebaseDatabase.instance.reference();

    var data = {
      "Name": name,
      "Email ID": email,
      "Password": password,
      "Phone": phone,
      "City": loc,
      "College": collegeName,
      "Stream": field,
      "Year": year,
      "Semester": sem,
      "date": formatedDate,
    };

    if (name == '' ||
        email == '' ||
        password == '' ||
        phone == '' ||
        loc == '' ||
        collegeName == '' ||
        field == '' ||
        year == '' ||
        sem == '') {
      scafKey.currentState
          .showSnackBar(new SnackBar(content: Text("Something Is MIssing")));
    } else {
      _registerRef.child("Users").push().set(data);
      scafKey.currentState
          .showSnackBar(new SnackBar(content: Text("Posted Successfully!!")));

      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }
}
