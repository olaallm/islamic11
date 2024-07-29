



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamii/home.dart';

void main(){
  runApp(Myapp());

}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: homePage.routeName,
      routes: {
        homePage.routeName:(context)=>const homePage(),
      },

    );
  }
}
