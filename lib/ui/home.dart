import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_flutter/ui/account.dart';
import 'package:instagram_flutter/ui/add.dart';
import 'package:instagram_flutter/ui/feed.dart';
import 'package:instagram_flutter/ui/search.dart';
import 'package:instagram_flutter/data/tabs.dart';
import 'package:instagram_flutter/constants/theme.dart';

import 'bottom_bar.dart';
import 'favorite.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    brightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(
      Icons.camera_alt,
    ),
    title: SizedBox(
        height: 35.0, child: Image.asset("assets/images/insta_logo.png")),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      )
    ],
  );

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  int currentScreenKey = 0;

  Widget tabBody = Container(
    color: AppTheme.background,
  );

  Map<int, StatefulWidget> _navigatorKeys = {
    0: Feed(),
    1: Search(),
    2: Add(),
    3: Favorite(),
    4: Account(),
  };

  @override
  void initState() {
    tabIconsList.forEach((tab) {
      tab.isSelected = false;
    });

    tabBody = Feed();

    super.initState();
  }

  void _selectTab(TabIconData tabItem) {
    if (currentScreenKey != tabItem.index) {
      print("select: ${tabItem.index} $currentScreenKey ${tabItem.index}");
      setState(() {
        tabBody = _navigatorKeys[tabItem.index];
      });
    }

    currentScreenKey = tabItem.index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.background,
      child: Scaffold(
        appBar: topBar,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomBar(
          tabIconsList: tabIconsList,
          onSelectTab: _selectTab,
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  //bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return true;
  }
}
