import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:greetings_app/constants.dart'; // Step - 1
import 'package:greetings_app/data.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp()); // Step - 2, step 4

DateTime now = DateTime.now();
int timeNow = int.parse(DateFormat('kk').format(now));
int val;

var data = Data().data;

class MyApp extends StatelessWidget {
  //step 3
  @override
  Widget build(BuildContext context) {
    if (timeNow <= 12) {
      val = 0;
    } else if (timeNow > 12 && timeNow <= 16) {
      val = 1;
    } else if (timeNow > 6 && timeNow <= 20) {
      val = 2;
    } else if (timeNow > 20) {
      val = 3;
    }
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
                  data[val][0],
                  alignment: Alignment.center,
                  fit: BoxFit.fitHeight,
                ), //Step 14

                SizedBox(
                  height: 15,
                ), //step 15
                Text(
                  data[val][1],
                  style: GoogleFonts.poppins(textStyle: kHeading),
                  textAlign: TextAlign.center,
                ), // Step 16
                SizedBox(
                  height: 10,
                ), // Step 17
                Text(
                  data[val][2],
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
