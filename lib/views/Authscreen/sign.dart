import 'package:ecommerce/widgets/customtext.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../contants/colorpalete.dart';
import '../../widgets/custombutton.dart';
import '../../widgets/passwordfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
      // backgroundColor: Color.fromRGBO(254, 254, 254, .55),
      backgroundColor: Palette.backgroundColor,
      body: SafeArea(
        child: ListView(
          physics: const ScrollPhysics(),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "Pasell",
                      // selectionColor: Colors.blue,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 53,
                            fontWeight: FontWeight.w700,
                            color: Palette.splashColour),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 44,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CustomText(
                text: "Sign Up",
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CustomText(
                text: "Enter your credentials to continue",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(124, 124, 124, 1),
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CustomText(
                text: "Username",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(124, 124, 124, 1),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CustomText(
                text: "Email",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(124, 124, 124, 1),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(266, 266, 266, 1))),
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CustomText(
                text: "Password",
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(124, 124, 124, 1),
              ),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: PasswordField()),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: "Sign Up",
              borderRadius: 19,
              // color: Palette.logoColour,
              color: Colors.white,
              textColor: Palette.textColorWhite,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              onPressed: () {
                // Add your logic here for the button press
                print("Log in button pressed!");
              },
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text.rich(TextSpan(
                  // text: ""
                  text: "By continuing you agree to our",
                  style: TextStyle(color: Palette.textColorBlack),
                )),
                Text.rich(TextSpan(
                  // text: ""
                  text: "Terms of Service and Privacy Policy",
                  style: TextStyle(color: Palette.logoColour),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
