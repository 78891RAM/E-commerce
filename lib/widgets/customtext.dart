// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {Key? key,
      this.text,
      this.fontSize,
      this.color,
      this.fontWeight,
      this.textOverflow,
      this.align})
      : super(key: key);

  final String? text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return Text(text!,
        overflow: textOverflow,
        style: GoogleFonts.roboto(
            fontSize: fontSize, color: color, fontWeight: fontWeight));
  }
}
