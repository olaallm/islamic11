import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});
  static const String routeName='home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Islami'),
      ),
    );
  }
}
