import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static Color primarycolor=Color(0xffB7935F);
  static Color BlackColor=Color(0xFF242424 );
   static ThemeData LigtTheme=ThemeData(
     primaryColor: primarycolor,

      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle:  true,
        backgroundColor: Colors.transparent,
        titleTextStyle:
        GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors.black, // Set the font color to black


        ),
      )
  );

   static ThemeData DarkTheme=ThemeData(

   );
}