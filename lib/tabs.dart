import 'package:flutter/material.dart';

class TabIconData {
  String imagePath;
  String selctedImagePath;
  bool isSelected;
  int index;
  IconData icon;

  TabIconData(
      {this.imagePath = '',
      this.index = 0,
      this.selctedImagePath = "",
      this.isSelected = false,
      this.icon = Icons.home
      });

  static List<TabIconData> tabIconsList = [
    TabIconData(
        imagePath: 'assets/images/tab_0.png',
        selctedImagePath: 'assets/images/tab_0s.png',
        index: 0,
        isSelected: true,
        icon: Icons.home),
    TabIconData(
        imagePath: 'assets/images/tab_1.png',
        selctedImagePath: 'assets/images/tab_1s.png',
        index: 1,
        isSelected: false,
        icon: Icons.search),
    TabIconData(
        imagePath: 'assets/images/tab_2.png',
        selctedImagePath: 'assets/images/tab_2s.png',
        index: 2,
        isSelected: false,
        icon: Icons.add_box),
    TabIconData(
        imagePath: 'assets/images/tab_3.png',
        selctedImagePath: 'assets/images/tab_3s.png',
        index: 3,
        isSelected: false,
        icon: Icons.favorite),
    TabIconData(
        imagePath: 'assets/images/tab_4.png',
        selctedImagePath: 'assets/images/tab_4s.png',
        index: 4,
        isSelected: false,
        icon: Icons.account_box),
  ];
}
