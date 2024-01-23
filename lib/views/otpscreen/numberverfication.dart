// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:ecommerce/widgets/customtext.dart';
// import 'package:flutter/material.dart';

// import '../../contants/colorpalete.dart';

// class NumberVerificationScreen extends StatelessWidget {
//   const NumberVerificationScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Palette.backgroundColor,
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back,
//           ),
//           onPressed: () {},
//         ),
//       ),
//       body: ListView(
//         physics: const ScrollPhysics(),
//         children: [
//           const Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               CustomText(
//                 text: "Enter your mobile number",
//                 fontSize: 20,
//                 fontWeight: FontWeight.w500,
//               ),
//               SizedBox(
//                 height: 70,
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25),
//                 child: CustomText(
//                   text: "Mobile number",
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                   color: Palette.textBlur,
//                 ),
//               ),
//               Column(
//                 children: [
//                   // Country Code Picker
//                   Expanded(
//                     child: CountryCodePicker(
//                       onChanged: (CountryCode? country) {
//                         // Handle the selected country code
//                         print('Selected Country Code: ${country?.dialCode}');
//                       },
//                       initialSelection: 'US', // Set your initial country
//                       favorite: const [
//                         '+1',
//                         '+44',
//                         '+81'
//                       ], // Add your favorite country codes
//                       showCountryOnly: false,
//                       showOnlyCountryWhenClosed: false,
//                       alignLeft: false,
//                     ),
//                   ),

//                   // TextField for Phone Number
//                   const Expanded(
//                     child: Padding(
//                       padding: EdgeInsets.only(left: 8.0),
//                       child: TextField(
//                         keyboardType: TextInputType.phone,
//                         decoration: InputDecoration(
//                           hintText: 'Enter your phone number',
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/customtext.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../contants/colorpalete.dart';
import '../../widgets/custombutton.dart';

class NumberVerificationScreen extends StatelessWidget {
  const NumberVerificationScreen({Key? key}) : super(key: key);

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
      body: ListView(
        physics: const ScrollPhysics(),
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CustomText(
                text: "Enter your mobile number",
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(
                height: 70,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Mobile number",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Palette.textBlur,
                ),
                const SizedBox(height: 8),

                // intl_phone_field
                IntlPhoneField(
                  cursorColor: Palette.textBlur,
                  decoration: InputDecoration(
                      hintText: 'Enter your phone number',
                      focusColor: Palette.textBlur,
                      fillColor: Palette.textBlur),
                  initialCountryCode: 'US',
                  onChanged: (phone) {
                    // Handle the phone number change
                    print('Selected Phone Number: $phone');
                  },
                ),
              ],
            ),
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
              print("Log in button pressed!");
            },
          ),
        ],
      ),
    );
  }
}
