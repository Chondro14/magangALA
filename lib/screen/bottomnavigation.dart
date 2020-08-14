import 'package:flutter/material.dart';
import 'package:magang_app/screen/ChatScreenMainView.dart';
import 'package:magang_app/screen/FeedScreenMainView.dart';
import 'package:magang_app/screen/blogscreen.dart';

import 'HomeScreenMainView.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});

  IconData iconData;
  String text;
}

class Bottomnavigation extends StatefulWidget {
  Bottomnavigation({Key key}) : super(key: key);

  @override
  _BottomnavigationState createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: false,
        body: TabBarView(children: [
          HomeScreenMainView(),
          ChatScreenMainView(),
          Blogscreen(),
          FeedScreenMainView()
        ]),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'increment',
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          elevation: 2.0,
          backgroundColor: Colors.yellow[500],
        ),
        bottomNavigationBar: TabBar(
            indicatorColor: Colors.yellow[700],
            unselectedLabelColor: Colors.black45,
            labelColor: Colors.yellow[700],
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(
                icon: Icon(Icons.chat),
                text: "Chat",
              ),
              Tab(
                icon: Icon(Icons.web_asset),
                text: "Blog",
              ),
              Tab(
                icon: Icon(Icons.web),
                text: "Feeds",
              )
            ]),
      ),
    );
  }
}
