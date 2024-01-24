import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../contants/colorpalete.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Pasell",
                  // selectionColor: Colors.blue,
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Palette.splashColour),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
