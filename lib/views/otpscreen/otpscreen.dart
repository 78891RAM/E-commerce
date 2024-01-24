import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

import '../../contants/colorpalete.dart';
import '../../cubit/Numberverification_cubit.dart';
import '../../widgets/custombutton.dart';
import '../../widgets/customtext.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

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
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CustomText(
                  text: "Enter your code to verify",
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  // align: TextAlign.center,
                ),
                CustomText(
                  text:
                      "A 4-digit code has been sent to your \n        registered mobile number",
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  // align: TextAlign.center,
                  color: Palette.textBlur,
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: OTPTextField(
                    length: 4,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 50,
                    style: const TextStyle(fontSize: 17),
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldStyle: FieldStyle.box,
                    hasError: false,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    keyboardType: TextInputType.number,
                    outlineBorderRadius: 10,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    onChanged: (pin) {
                      // Handle OTP changes
                      print('Entered OTP: $pin');
                    },
                    onCompleted: (pin) {
                      // Handle completed OTP
                      print('Completed OTP: $pin');
                    },
                  ),
                ),
                // const Spacer(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(TextSpan(
                      // text: ""
                      text: "Don't recieve the code? ",
                      style: TextStyle(
                          color: Palette.textBlur,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    )),
                    Text.rich(
                      TextSpan(
                        // text: ""
                        text: "Resend again ",
                        style: TextStyle(
                            color: Palette.logoColour,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              text: "Verify and Create Account",
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
        ));
  }
}
