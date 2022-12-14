import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../model/navigation_models..dart';
import '../../view/widgets/navigation/navigation_widget.dart';

class NavigationController extends GetxController {
  List<NavigationItem> navigationItems = getNavigationItemList();
  late final selectedItem=navigationItems[0].obs;

  List<Widget> buildNavigation() {
    List<Widget> list = [];
    for (var i = 0; i < navigationItems.length; i++) {
      list.add(NavigationWidget(
        item: navigationItems[i],
      ));
    }
    return list;
  }

}
