import 'package:ecommerce/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../contants/colorpalete.dart';

class ChooseLocationScreen extends StatelessWidget {
  const ChooseLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.backgroundColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              SvgPicture.asset('images/map.svg', height: 100),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: "Select Your Location",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(
            text:
                "Switch on your location to stay in tune with \n             what’s happening in your area",
            fontSize: 16,
            fontWeight: FontWeight.w500,
            align: TextAlign.center,
            color: Palette.textBlur,
          ),
        ],
      ),
    );
  }
}
