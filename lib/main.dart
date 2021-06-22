import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greetings_app/constants.dart'; // Step - 1

void main() => runApp(MyApp()); // Step - 2, step 4

class MyApp extends StatelessWidget {
  //step 3
  @override
  DateTime now = DateTime.now();
  Widget build(BuildContext context) {
    return MaterialApp(
      // Step 5
      home: SafeArea(
        child: Scaffold(
          // Step 6
          backgroundColor: kBackgroundColor, // Step 7
          body: Padding(
            // step 8
            padding: EdgeInsets.all(kPadding),
            child: Column(
              // Step 9
              crossAxisAlignment: CrossAxisAlignment.center, // step 10

              children: [
                // Step 11
                Text(
                  'Greetings App',
                  style: GoogleFonts.poppins(textStyle: kTitle),
                  textAlign: TextAlign.center,
                ), //Step 12
                Spacer(
                  flex: 2,
                ), //Step 13
                Image.asset(
                  './assets/images/good_afternoon.png',
                  alignment: Alignment.center,
                  fit: BoxFit.fitHeight,
                ), //Step 14

                SizedBox(
                  height: 15,
                ), //step 15
                Text(
                  'Good Morning',
                  style: GoogleFonts.poppins(textStyle: kHeading),
                  textAlign: TextAlign.center,
                ), // Step 16
                SizedBox(
                  height: 10,
                ), // Step 17
                Text(
                  'Some quote here',
                  style: GoogleFonts.poppins(textStyle: kParagraph),
                  textAlign: TextAlign.center,
                ), // Step 18
                Spacer(
                  flex: 2,
                ) //Step 19
              ],
            ),
          ),
        ),
      ),
    );
  }
}
