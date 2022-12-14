import 'package:get/get.dart';

import '../bindings/main_binding.dart';
import '../view/screens/camel_detail.dart';
import '../view/screens/home_screen.dart';

appRoutes() => [
      GetPage(
        name: '/',
        page: () => Home(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ),
   /*    GetPage(
        name: '/camel detail',
        page: () => CamelDetail(camel: null,),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
        binding: Binding(),
      ), */
    ];
