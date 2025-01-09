import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom_theme/AppTextTheme.dart';
import 'package:flutter_application_1/custom_theme/apppalet.dart';
import 'package:google_fonts/google_fonts.dart';

class Apptheme {

  static ThemeData lightTheme =ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AppPalette.appBar,
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: AppPalette.lightColor,
    textTheme:AppTextTheme.lightTextTheme,
  );

   static ThemeData darkTheme =ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppPalette.appBar,
    fontFamily: GoogleFonts.handjet().fontFamily,
    scaffoldBackgroundColor: AppPalette.lightColor,
    textTheme:AppTextTheme.lightTextTheme,
  );
}