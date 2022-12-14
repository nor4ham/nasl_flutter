import 'package:flutter/material.dart';

double mobileSize = 450;

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double getWidth(double pixels, BuildContext context) {
  return MediaQuery.of(context).size.width *
      (((pixels * 100) / MediaQuery.of(context).size.width) / 100);
}

double getHeight(double pixels, BuildContext context) {
  return MediaQuery.of(context).size.height *
      (((pixels * 100) / MediaQuery.of(context).size.height) / 100);
}
