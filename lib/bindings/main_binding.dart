import 'package:get/get.dart';

import 'controller/camel_controller.dart';
import 'controller/filters_controller.dart';
import 'controller/navigation_controller.dart';
import 'controller/owners_controller.dart';

class Binding implements Bindings {
  @override
  void dependencies() {
    Get.put<NavigationController>(NavigationController(),tag: "nav");
    Get.put<FiltersController>(FiltersController(),tag: "filters");
    Get.put<CamelsController>(CamelsController(),tag: "camels");
    Get.put<OwnersController>(OwnersController(),tag: "owners");


    
  }
}
