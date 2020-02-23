import 'package:flutter/material.dart';

class PostViewPage extends StatefulWidget {
  @override
  _PostViewPageState createState() => _PostViewPageState();
}

class _PostViewPageState extends State<PostViewPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(35, 25, 25, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(170, 0, 0, 1),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                child: Text("Donate"),
              ),
              Tab(
                child: Text("Request"),
              ),
            ],
          ),
        ),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody(){
    return TabBarView(
      children: [
        Icon(Icons.directions_car,color: Colors.white,),
        Icon(Icons.directions_transit,color: Colors.white,),
      ],
    );
  }
}
