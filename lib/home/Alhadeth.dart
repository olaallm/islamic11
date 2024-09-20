import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/hadeth_model.dart';
import 'package:islamii/hadeth_Details.dart';
class AhadethTab extends StatefulWidget {
  AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<hadeth_model> allAhadeth = [];


  @override
  void initState() {
    super.initState();
    loadHadethFile();
  }

  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('assets/images/hadith_header.png', height: 219),
        Divider(

        ),
        Text(
          'Ahadeth',
          textAlign: TextAlign.center,
          style:Theme.of(context).textTheme.bodyMedium,
        ),
        Divider(
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              endIndent: 40,
              indent: 40,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context,HadethDetails.routeName,
                      arguments: allAhadeth[index]);
                },
                child: Text(
                    textAlign: TextAlign.center,
                    allAhadeth[index].title,
                    style: Theme.of(context).textTheme.bodySmall),
              );
            },
            itemCount: allAhadeth.length,
          ),
        )
      ],
    );
  }
  loadHadethFile() {
    rootBundle.loadString('assets/files/ahadeth.txt').then((value) {
      List<String> ahadeth = value.split('#');
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> HadethLines = hadeth.trim().split('\n');
        String title = HadethLines[0];
        HadethLines.removeAt(0);
        List<String> content = HadethLines;
        hadeth_model hadethModel = hadeth_model(content, title);
        print(title);
        allAhadeth.add(hadethModel);
        setState(() {});
      }
    });
  }
}