import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bindings/controller/navigation_controller.dart';
import '../../responsive.dart';
import '../../utils/string.dart';
import '../../utils/theme.dart';
import '../widgets/home/home_mobil.dart';
import '../widgets/text.dart';

class Home extends StatelessWidget {
  Home({super.key});
  NavigationController navigationController = Get.find(tag: "nav");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       appBar: width(context)<=mobileSize?AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        toolbarHeight:getHeight(50,context),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: TextWidget(text: arabic, color: kPrimaryColor, fontSize: 22, fontWeight: FontWeight.bold,),
        ),
        title:Container(
               width: getWidth(50,context),
               height: getHeight(50,context),
               decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"), 
                  fit: BoxFit.cover,
                ),
              ),),
      centerTitle: true,
        actions:  const [
           Padding(
            padding: EdgeInsets.only(right: 16,),
            child: Icon(
              Icons.search,
              color:kPrimaryColor,
              size: 28,
            ),
          ),
        ],
      ):null,
      body:width(context)<=mobileSize? HomeMobile():const Center(child: Text("not available now")),
      bottomNavigationBar:width(context)<=mobileSize? Container(
        height: getHeight(50,context),
        width: width(context),
        decoration: const BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: greyColor,
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: navigationController.buildNavigation(),
        ),
      ):null,
      ),
      );
  }
}
