import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class DonateBook extends StatelessWidget {

  TextEditingController _titleController = TextEditingController();
  TextEditingController _authorController = TextEditingController();
  TextEditingController _genreController = TextEditingController();
  TextEditingController _publisherController = TextEditingController();
  DatabaseReference _donateRef;
  FirebaseDatabase database = new FirebaseDatabase();
  DatabaseError error;

  void initState() {
    _donateRef = database.reference().child("donate");
    database.setPersistenceEnabled(true);
    database.setPersistenceCacheSizeBytes(10000000);
    _donateRef.keepSynced(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        leading: IconButton(
          icon: Icon(Icons.clear),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("Donate Book"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: "Title",
                  labelStyle: TextStyle(color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _authorController,
                decoration: InputDecoration(
                    labelText: "Author",
                    labelStyle: TextStyle(color: Colors.red),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _genreController,
                decoration: InputDecoration(
                  labelText: "Genre",
                  labelStyle: TextStyle(color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _publisherController,
                decoration: InputDecoration(
                  labelText: "Publisher",
                  labelStyle: TextStyle(color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                color: Colors.red,
                onPressed: _submit,
                child: Text("Submit",
                style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _submit(){
    var title = _titleController.text;
    var author = _authorController.text;
    var genre = _genreController.text;
    var publsiher = _publisherController.text;
  }
}