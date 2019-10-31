import 'package:flutter/material.dart';

import 'body.dart';

class Home extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(
      Icons.camera_alt,
      size: 32,
    ),
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send, size: 32),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: topBar,
        body: new Body(),
        bottomNavigationBar: new Container(
          color: Colors.white,
          height: 50.0,
          alignment: Alignment.center,
          child: new BottomAppBar(
            child: new Row(
              // alignment: MainAxisAlignment.spaceAround,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new IconButton(
                  iconSize: 32,
                  icon: Icon(
                    Icons.home,
                  ),
                  onPressed: () {
                    print("home button clicked");
                  },
                ),
                new IconButton(
                  iconSize: 32,
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {
                    print("search button clicked");
                  },
                ),
                new IconButton(
                  iconSize: 32,
                  icon: Icon(
                    Icons.add_box,
                  ),
                  onPressed: () {
                    print("add button clicked");
                  },
                ),
                new IconButton(
                  iconSize: 32,
                  icon: Icon(
                    Icons.favorite,
                  ),
                  onPressed: () {
                    print("favorite button clicked");
                  },
                ),
                new IconButton(
                  iconSize: 32,
                  icon: Icon(
                    Icons.account_box,
                  ),
                  onPressed: () {
                    print("account button clicked");
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
