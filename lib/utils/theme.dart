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
    cardColor: Colors.transparent,
    scaffoldBackgroundColor: white,
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
  );
}
