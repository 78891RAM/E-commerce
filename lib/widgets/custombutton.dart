// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:ecommerce/contants/colorpalete.dart';
import 'package:ecommerce/widgets/customtext.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      this.borderRadius,
      this.color,
      this.textColor,
      this.text,
      this.height,
      this.width,
      this.fontSize,
      this.fontWeight,
      this.onPressed,
      this.align})
      : super(key: key);

  final double? borderRadius;
  final Color? color;
  final Color? textColor;
  final String? text;
  final double? height;
  final double? width;
  final double? fontSize;
  VoidCallback? onPressed;
  final FontWeight? fontWeight;
  final TextAlign? align;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 67,
      // width: 364,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
                backgroundColor: Palette.logoColour,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius!))),
            child: CustomText(
              text: text,
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: color,
              align: align,
            )),
      ),
    );
  }
}
