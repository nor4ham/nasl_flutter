// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../model/product_models.dart';
import '../../../responsive.dart';
import '../../../utils/theme.dart';
import '../../screens/camel_detail.dart';
import '../text.dart';


class CamelWidget extends StatelessWidget {
  Camel? camel;
  int? index;
  CamelWidget({required this.index ,required this.camel,super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context) => CamelDetail(camel: camel!,)),);
        },
      child: Container(
      margin: EdgeInsets.only(right: 32, left: index == 0 ? 16 : 0, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kPrimaryColor,
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            margin: const EdgeInsets.only(
              bottom: 16,
              top: 24,
            ),
            child: Hero(
              tag: camel!.name,
              child:Container(
               width: width(context)/1.5,
               decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo.png"), 
                  fit: BoxFit.cover,
                ),
              ),),
            ),
          ),
        ),
        TextWidget(text: camel!.name, color: blackColor,fontSize: 14,fontWeight: FontWeight.bold,),
        TextWidget(text: camel!.owner.fullname, color: greyColor,fontSize: 12,fontWeight: FontWeight.bold,)
        ],
      ),
    ),
          );
  }
}