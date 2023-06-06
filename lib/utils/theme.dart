import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const white = Colors.white;
const black = Colors.black;
const kTextColor = Color(0xff1A1C2A);
const kButtonColor = Color(0xff2B2D40);
const kNav = Color(0xffEDEFF1);
const kGreen = Color(0xff4DAB96);
const kRed = Color(0xff65A897);
const kStar = Color(0xffF6A341);
const kGrey = Color(0xffC2C4C8);

ThemeData get appTheme {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: GoogleFonts.poppinsTextTheme(),
    primaryColor: black,
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: white,
      iconTheme: IconThemeData(
        color: black,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelPadding: EdgeInsets.zero,
      indicator: const UnderlineTabIndicator(
        borderSide: BorderSide(
          color: kGreen,
          width: 3,
        ),
      ),
      indicatorSize: TabBarIndicatorSize.label,
      labelColor: kGreen,
      labelStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      unselectedLabelColor: kGreen,
      unselectedLabelStyle: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
    scaffoldBackgroundColor: white,
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
  );
}
