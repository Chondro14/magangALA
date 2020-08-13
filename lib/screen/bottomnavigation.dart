import 'package:flutter/material.dart';
import 'package:magang_app/screen/blogscreen.dart';
import 'package:magang_app/screen/chatscreen.dart';
import 'package:magang_app/screen/feedscreen.dart';

import 'homescreen.dart';

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
  int screenPageIndex = 0;

  Widget screenPage = new Homescreen();

  Widget ChooseScreen(int indexPage) {
    switch (indexPage) {
      case 0:
        return Homescreen();
      case 1:
        return Chatscreen();
      case 2:
        return Blogscreen();
      case 3:
        return Feedscreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      body: screenPage,
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 4.5,
                    onPressed: () {
                      setState(() {
                        screenPageIndex = 0;
                        screenPage = ChooseScreen(screenPageIndex);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          size: 30,
                          color: screenPageIndex == 0
                              ? Colors.yellow[700]
                              : Colors.black45,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: screenPageIndex == 0
                                  ? Colors.yellow[700]
                                  : Colors.black45),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 4.5,
                    onPressed: () {
                      setState(() {
                        screenPageIndex = 1;
                        screenPage = ChooseScreen(screenPageIndex);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.chat,
                          size: 30,
                          color: screenPageIndex == 1
                              ? Colors.yellow[700]
                              : Colors.black45,
                        ),
                        Text(
                          'Chat',
                          style: TextStyle(
                              color: screenPageIndex == 1
                                  ? Colors.yellow[700]
                                  : Colors.black45),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 4.5,
                    onPressed: () {
                      setState(() {
                        screenPageIndex = 2;
                        screenPage = ChooseScreen(screenPageIndex);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.web_asset,
                          size: 30,
                          color: screenPageIndex == 2
                              ? Colors.yellow[700]
                              : Colors.black45,
                        ),
                        Text(
                          'Blog',
                          style: TextStyle(
                              color: screenPageIndex == 2
                                  ? Colors.yellow[700]
                                  : Colors.black45),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: MediaQuery.of(context).size.width / 4.5,
                    onPressed: () {
                      setState(() {
                        screenPageIndex = 3;
                        screenPage = ChooseScreen(screenPageIndex);
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.web,
                          size: 30,
                          color: screenPageIndex == 3
                              ? Colors.yellow[700]
                              : Colors.black45,
                        ),
                        Text(
                          'Feeds',
                          style: TextStyle(
                              color: screenPageIndex == 3
                                  ? Colors.yellow[700]
                                  : Colors.black45),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),
    );
  }
}
