// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../bindings/controller/filters_controller.dart';
import '../../../../model/filters_models.dart';
import '../../../../responsive.dart';
import '../../../../utils/theme.dart';
import '../../text.dart';

class FiltersWidget extends StatelessWidget {
  Filter? item;
  FiltersController filtersController = Get.find(tag: "filters");
  FiltersWidget({required this.item, super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return GestureDetector(
        onTap: () {
          filtersController.selectedFilter.value = item!;
        },
        child: Container(
          color: whiteColor,
          height: getHeight(35,context),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: getWidth(30, context),
                  height: getHeight(3,context),
                  color: filtersController.selectedFilter.value == item
                      ? kPrimaryColor
                      : whiteColor,
                ),
              ),
              Center(
               child: TextWidget(
                text: item!.name,
                color: greyColor,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing:3
              ))
            ],
          ),
        ),
      );
    });
  }
}
