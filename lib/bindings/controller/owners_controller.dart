import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../model/product_models.dart';
import '../../view/widgets/product/owners.dart';

class OwnersController extends GetxController {
  List<Owner> owners = getOwnerList();
  List<Widget> buildOwners() {
    List<Widget> list = [];
    for (var i = 0; i < owners.length; i++) {
      list.add(OwnerWidget(owner: owners[i], index: i, ));
    }
    return list;
  }
}
