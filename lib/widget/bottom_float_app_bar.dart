import 'package:flutter/material.dart';
import 'package:magang_app/screen/ChatScreenMainView.dart';
import 'package:magang_app/screen/FeedScreenMainView.dart';
import 'package:magang_app/screen/HomeScreenMainView.dart';
import 'package:magang_app/screen/blogscreen.dart';

class BottomFloatAppBar extends StatelessWidget {
  int screenPageIndex = 0;

  Widget screenPage = new HomeScreenMainView();

  Widget ChooseScreen(int indexPage) {
    switch (indexPage) {
      case 0:
        return HomeScreenMainView();
      case 1:
        return ChatScreenMainView();
      case 2:
        return Blogscreen();
      case 3:
        return FeedScreenMainView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
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
                    screenPageIndex = 0;
                    screenPage = ChooseScreen(screenPageIndex);
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
                    screenPageIndex = 1;
                    screenPage = ChooseScreen(screenPageIndex);
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
                    screenPageIndex = 2;
                    screenPage = ChooseScreen(screenPageIndex);
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
                    screenPageIndex = 3;
                    screenPage = ChooseScreen(screenPageIndex);
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
    );
  }
}
