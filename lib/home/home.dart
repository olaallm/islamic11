import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/home/Alhadeth.dart';
import 'package:islamii/home/RRR.dart';
import 'package:islamii/home/Quran.dart';

import 'package:islamii/home/sebha.dart';

import 'package:islamii/home/settings.dart';

class homePage extends StatefulWidget {
   homePage({super.key});
  static const String routeName='home';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/main_bg.jpg"),
    Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Islami ',

        ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFFB7935F),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: selectedIndex,
          onTap: (value) {
            selectedIndex=value;
            setState(() {

            });
          },
          showUnselectedLabels: false,
          elevation: 0,
          items: [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran-quran.png")),label: "Ahadeth"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/quran.png")),label: "Quran"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "Sebha"),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "Radio"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
      ]),
      body: tabs[selectedIndex],
      ),
    ],
    );

  }
  List<Widget>tabs=[

    AhadethTab(),
      Quran(),
    Sebha(),
   Settings(),
     RRR(),
  ];
}
