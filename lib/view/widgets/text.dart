// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  String text;
  Color color;
  double fontSize;
  FontWeight fontWeight;
  TextDecoration? decoration;
  double? letterSpacing;
  TextWidget(
      {this.decoration,
      required this.text,
      required this.color,
      required this.fontSize,
      required this.fontWeight,
      this.letterSpacing,
      super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(text,
          style: GoogleFonts.catamaran(
            decoration: decoration,
            color: color,
            fontSize: fontSize,
            fontWeight: fontWeight,
            letterSpacing:letterSpacing,
          ),
          overflow:TextOverflow.ellipsis
          ),
    );
  }
}
