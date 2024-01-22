import 'package:ecommerce/contants/colorpalete.dart';
import 'package:ecommerce/widgets/custombutton.dart';
import 'package:ecommerce/widgets/customtext.dart';
import 'package:ecommerce/widgets/passwordfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                text: "Login",
                fontSize: 26,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: CustomText(
                text: "Enter your emails and password",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 39),
              child: Align(
                alignment: Alignment.centerRight,
                child: CustomText(
                  text: 'Forgot Password?',
                  color: Palette.textColorBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,

                  // style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           
            CustomButton(
              text: "Log in",
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
                  text: "Don't have an account? ",
                  style: TextStyle(color: Palette.textColorBlack),
                )),
                Text.rich(TextSpan(
                  // text: ""
                  text: "Signup ",
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
