// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:nasl/utils/theme.dart';

import '../../../model/product_models.dart';
import '../../../responsive.dart';
import '../text.dart';



class OwnerWidget extends StatelessWidget {
  Owner? owner;
  int? index;
  OwnerWidget({super.key, required this.owner,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(100,context),
      decoration: const BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
          ),
      ),
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.only(right: 16, left: index == 0 ? 16 : 0),
      width: getWidth(255,context),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 4,
            margin: const EdgeInsets.all(0),
            clipBehavior: Clip.antiAlias,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: owner!.image, 
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(text: owner!.fullname, color: blackColor, fontSize: 16, fontWeight: FontWeight.bold,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextWidget(text: "${owner!.camels} camels", color: blackColor, fontSize: 14, fontWeight: FontWeight.bold,),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
