import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../model/product_models.dart';
import '../../view/widgets/product/camel.dart';



class CamelsController extends GetxController {
  List<Camel> camels = getCamelList();
  List<Widget> buildCamels(){
    List<Widget> list = [];
    for (var i = 0; i < camels.length; i++) {
      list.add(CamelWidget(camel: camels[i],index: i,));
    }
    return list;
  }
}
