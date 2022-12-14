// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../bindings/controller/navigation_controller.dart';
import '../../../model/navigation_models..dart';
import '../../../responsive.dart';
import '../../../utils/theme.dart';

class NavigationWidget extends StatelessWidget {
  NavigationItem? item;
  NavigationController  navigationController = Get.find(tag: "nav");
  NavigationWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return  Obx(() {
      return GestureDetector(
      onTap: () {
         navigationController.selectedItem.value = item!;
      },
      child: SizedBox(
        width: getWidth(50,context),
        child: Center(
          child: Icon(
            item!.iconData,
            color: navigationController.selectedItem.value == item ? kPrimaryColor : kStarsColor,
            size: 28
          ),
        ),
      ),
    );});
  }
}
