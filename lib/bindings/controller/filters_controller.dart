import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../model/filters_models.dart';
import '../../view/widgets/home/filters/filters.dart';

class FiltersController extends GetxController {
  List<Filter> filters = getFilterList();
  late final  selectedFilter=filters[0].obs;
  List<Widget> buildFilters() {
    List<Widget> list = [];
    for (var i = 0; i < filters.length; i++) {
      list.add(FiltersWidget(
        item: filters[i],
      ));
    }
    return list;
  }
   
}
