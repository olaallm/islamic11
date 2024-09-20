import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/sura_model.dart';


class SuraDetails extends StatefulWidget {

  static String routeName='suradetails';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
    List<String> verses= [];
  @override
  Widget build(BuildContext context) {
   var model=ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadSuraFile(model.index);
    }
    return   Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/main_bg.jpg"))
      ),
      child: Scaffold(


        appBar: AppBar(

          centerTitle: true,
          title: Text(model.name,style: GoogleFonts.elMessiri(
            fontWeight: FontWeight.w700,
            color: Colors.black,
            fontSize: 30
          ),),
        ),
       body: ListView.builder(itemBuilder: (context,index){
       return Text
         (verses[index]);},
itemCount: verses.length,),
      ),

    ) ;

  }

  loadSuraFile(int index)async{
    String Sura=await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String>SuraLines=Sura.split("/n");
    verses=SuraLines;
    print(SuraLines);
    setState(() {

    });

  }
}
