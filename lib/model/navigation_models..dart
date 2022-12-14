import 'package:flutter/material.dart';

class NavigationItem {
  IconData iconData;
  NavigationItem(this.iconData);
}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.person),
    // NavigationItem(Icons.settings),
  ];
}
