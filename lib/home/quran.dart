
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamii/sura_details.dart';
import 'package:islamii/sura_model.dart';

class Quran extends StatelessWidget {
   Quran({super.key});
   List<String>SuraName=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
   ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
   ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
   ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
   ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
   ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
   ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
   ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
   ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
   "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Image.asset("assets/images/quran_header_icn-1.png",
          height: 227,),
        Divider(thickness: 3,
          color: Color(0xffB7935F),),
        Text("SuraName",textAlign: TextAlign.center,style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600),),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index){
              return Divider(
                thickness: 2,
                color: Color(0xffB7935F),
                indent: 60,
                endIndent: 60,
              );
            },
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, SuraDetails.routeName,
                  arguments: SuraModel(index, SuraName[index]));
                },
                child: Text(
                  SuraName[index],

                  textAlign: TextAlign.center
                  ,style:GoogleFonts.inder(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,

                ),
                ),
              );
            },
            itemCount: 7,),
        ),
      ],
    );
  }
}
