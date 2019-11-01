import 'package:flutter/material.dart';
import 'package:instagram_flutter/tabs.dart';

class BottomBar extends StatelessWidget {
  BottomBar({this.tabIconsList, this.onSelectTab});

  List<TabIconData> tabIconsList;

  final ValueChanged<TabIconData> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
        items: tabIconsList.map((tab) => _buildItem(tabItem: tab)).toList(),
        onTap: (index) => onSelectTab(
              tabIconsList[index],
            ),
        type: BottomNavigationBarType.fixed);
  }

  BottomNavigationBarItem _buildItem({TabIconData tabItem}) {
    return BottomNavigationBarItem(
      icon: Icon(
        tabItem.icon,
        color: Colors.black,
      ),
      title: Padding(padding: EdgeInsets.all(0)),
    );
  }
}
