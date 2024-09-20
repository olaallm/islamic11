



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/MyThemeData.dart';
import 'package:islamii/hadeth_Details.dart';
import 'package:islamii/home/home.dart';

import 'package:islamii/sura_details.dart';
void main(){
  runApp(Myapp());

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.light ,
      theme: MyThemeData.LigtTheme,
      darkTheme: MyThemeData.DarkTheme ,

      initialRoute: homePage.routeName,
      routes: {
        homePage.routeName:(context)=> homePage(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadethDetails.routeName:(context)=>HadethDetails(),
      },

    );
  }
}
