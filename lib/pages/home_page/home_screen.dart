import 'package:flutter/material.dart';
import 'package:book_sharing_app/pages/chat/chat.dart';
import 'package:book_sharing_app/pages/post/choose_post.dart';
import 'package:book_sharing_app/pages/profile/user_profile.dart';
import 'package:book_sharing_app/pages/search/search.dart';
import 'package:book_sharing_app/pages/post_view/post_view_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var pages = [
    new PostViewPage(),
    new Search(),
    new ChoosePost(),
    new Chat(),
    new UserProfile(),
  ];

  var _bottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(35, 35, 35, 1),
      body: pages[_bottomNavigationIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index){
            setState(() {
              _bottomNavigationIndex = index;
            });
          },
        backgroundColor: Color.fromRGBO(170, 0, 0, 1),
        currentIndex: _bottomNavigationIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            title: Text("Home",
              style: TextStyle(color: Colors.white),),
//            backgroundColor: Color.fromRGBO(170, 0, 0, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.white),
            title: Text("Search",
              style: TextStyle(color: Colors.white),),
//            backgroundColor: Color.fromRGBO(170, 0, 0, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit, color: Colors.white),
            title: Text("Post",
              style: TextStyle(color: Colors.white),),
//            backgroundColor: Color.fromRGBO(170, 0, 0, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat, color: Colors.white),
            title: Text("Chat",
              style: TextStyle(color: Colors.white),),
//            backgroundColor: Color.fromRGBO(170, 0, 0, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            title: Text("Profile",
              style: TextStyle(color: Colors.white),
            ),
//            backgroundColor: Color.fromRGBO(170, 0, 0, 1),
          ),
        ],
      ),
    );
  }

}
