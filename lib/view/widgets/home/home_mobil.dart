// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../bindings/controller/camel_controller.dart';
import '../../../bindings/controller/filters_controller.dart';
import '../../../bindings/controller/owners_controller.dart';
import '../../../responsive.dart';
import '../../../utils/theme.dart';
import '../text.dart';

class HomeMobile extends StatelessWidget {
  HomeMobile({super.key});
  FiltersController filtersController = Get.find(tag: "filters");
  CamelsController camelsController = Get.find(tag: "camels");
  OwnersController ownersController = Get.find(tag: "owners");

  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      height: height(context),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height:getHeight(88,context) ,
              padding: EdgeInsets.only(top: getHeight(10,context), left: getWidth(7, context), right:  getWidth(7, context)),
              decoration: BoxDecoration(
               color: whiteColor,
               borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(40),
                ),
                boxShadow:[
                  BoxShadow(
                    color: greyColor.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 3),
                    ),
                  ] ,
                ),
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                Center(child: TextWidget(text: 'Discover camels', color:  blackColor, fontSize: 20, fontWeight: FontWeight.w900,)),
                Padding(
                  padding: EdgeInsets.only(right: getWidth(75, context)),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   filtersController.buildFilters()[0],
                   SizedBox(width:getWidth(20, context)),
                   filtersController.buildFilters()[1],
                  ],
                  )
                ),
              ],
            ),
            ),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: camelsController.buildCamels(),
                )),
            Container(
              height: getHeight(175, context),
              decoration:const BoxDecoration(
                 color: whiteColor,
                 borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: 'Owners to follow',
                              color: blackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              ),
                            Row(
                              children: [
                                TextWidget(
                                  text: 'Show all',
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  ),
                                  const SizedBox(
                                     width: 8,
                                      ),
                                  const Icon(
                                     Icons.arrow_forward,
                                      size: 14,
                                      color: kPrimaryColor,
                                  ),
                                ],
                          ),
              ],
            ),
          ),
           Expanded(
             child: ListView(
               physics: const BouncingScrollPhysics(),
               scrollDirection: Axis.horizontal,
               children: ownersController.buildOwners(),
             ),
           ), 
           const SizedBox(height: 10,)
        ],
      ),
    ),
          ],
        ),
    );
  }
}

