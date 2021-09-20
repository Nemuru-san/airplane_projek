import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Color kprimaryColor = Color(0xff5C40CC);
Color ktextColorBlack = Color(0xff1F1449);
Color ktextColorWhite = Color(0xffFFFFFF);
Color ktextColorGrey = Color(0xff9698A9);
Color ktextColorGreen = Color(0xff0EC3AE);
Color ktextColorRed = Color(0xffEB70A5);
Color kbgColor = Color(0xffFAFAFA);
Color kstrokeColor = Color(0xffDBD7EC);
Color kTransparent = Colors.transparent;
Color kUnavailableColor = Color(0xffEBECF1);
Color kAvailableColor = Color(0xffE0D9FF);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: ktextColorBlack,
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: ktextColorWhite,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: ktextColorGrey,
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  color: ktextColorGreen,
);

TextStyle redTextStyle = GoogleFonts.poppins(
  color: ktextColorRed,
);

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: kprimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
