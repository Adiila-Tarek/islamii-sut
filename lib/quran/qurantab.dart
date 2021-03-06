import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islami/quran/suraname.dart';

import '../main.dart';

class quran extends StatelessWidget {
  final List<String>suraNames= [
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/qur2an_screen_logo.png',
        )),
        Container(
          height: 2,
          width: double.infinity,
          color: MythemeData.primaryColor,
        ),
        Text('اسم السورة',style: TextStyle(fontSize: 25),),
        Container(
          height: 2,
          width: double.infinity,
          color: MythemeData.primaryColor,
        ),
        Expanded(
          flex: 3,
            child:ListView.builder(itemBuilder: (buildContext,index){
            return suraNameitem(suraNames[index], index);
            },itemCount: suraNames.length,)
        )
      ],
    );
  
  }
}
