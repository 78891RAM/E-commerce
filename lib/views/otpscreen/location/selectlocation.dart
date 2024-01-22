import 'package:ecommerce/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../contants/colorpalete.dart';
import '../../../widgets/custombutton.dart';

class ChooseLocationScreen extends StatelessWidget {
  ChooseLocationScreen({super.key});
  final List<String> districts = [
    'Achham',
    'Arghakhanchi',
    'Baglung',
    'Baitadi',
    'Bajhang',
    'Bajura',
    // ... add more districts
  ];

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
      body: SafeArea(
        child: ListView(
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
            Column(
              children: [
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
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  align: TextAlign.center,
                  color: Palette.textBlur,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(
                text: "Your Zone",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Palette.textBlur,
              ),
            ),
            // const SizedBox(
            //   height: 13,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButtonFormField(
                items: districts.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  print(newValue);
                },
                decoration: const InputDecoration(
                  enabled: true,
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(266, 266, 266, 1.0),
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: TextField(
            //         decoration: const InputDecoration(
            //           hintText: "Select your location",
            //           enabledBorder: UnderlineInputBorder(
            //             borderSide: BorderSide(color: Colors.black),
            //           ),
            //           focusedBorder: UnderlineInputBorder(
            //             borderSide: BorderSide(color: Colors.blue),
            //           ),
            //         ),
            //         readOnly: true,
            //         onTap: () {
            //           // Handle when the text field is tapped
            //           print("Text field tapped");
            //         },
            //       ),
            //     ),
            //     IconButton(
            //       onPressed: () {
            //         // Handle location button click (e.g., show map or current location)
            //         print("Location button clicked");
            //       },
            //       icon: const Icon(Icons.location_on),
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomText(
                text: "Your Area",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Palette.textBlur,
              ),
            ),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Select your location",
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            // Handle location button click (e.g., show map or current location)
                            print("Location button clicked");
                          },
                          icon: const Icon(Icons.my_location),
                        ),
                      ),
                      readOnly: true,
                      onTap: () {
                        // Handle when the text field is tapped
                        print("Text field tapped");
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Submit",
              borderRadius: 19,
              // color: Palette.logoColour,
              color: Colors.white,
              textColor: Palette.textColorWhite,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              onPressed: () {
                // GoRouter.of(context).go("/signup");
                // Add your logic here for the button press
                print("submit location in button pressed!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
