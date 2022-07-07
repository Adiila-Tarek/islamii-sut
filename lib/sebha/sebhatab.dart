import 'package:flutter/material.dart';

import '../main.dart';

class sebha extends StatefulWidget {
  @override
  _sebhaState createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int counter = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله ",
    "الله اكبر",
    "سبحانك ربنا اني كنت من الظالمين",
    "رضيت باللّه ربًّا، وبالإسلام ديناً، وبمحمّد نبيًّا.",
    "رضيت باللّه ربًّا، وبالإسلام ديناً، وبمحمّد نبيًّا.",
    "رضيت باللّه ربًّا، وبالإسلام ديناً، وبمحمّد نبيًّا.",
    "اللهمَّ إني أسألُك علمًا نافعًا ورزقًا طيبًا وعملًا متقبلًا",
    "حَسْبِيَ اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ ۖ عَلَيْهِ تَوَكَّلْتُ ۖ وَهُوَ رَبُّ الْعَرْشِ الْعَظِيمِ",
    "سبحان الله العظيم",
    "سبحان الله وبحمده",
    "لا حول ولاقوه الا بالله",
    "حسبي الله عليه توكلت",
    "سبحانك ياالله",
    "الحمدلله كثيرا",
    "وحده لا شريك له",
    "ربنا لا تؤاخذنا ان نسينا او اخطانا",
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
    "لا اله الا الله",
    "سبحان الله العظيم",
    "سبحان الله وبحمده",
    "حسبي الله عليه توكلت",
    "الحمدلله كثيرا",
    "حسبي الله عليه توكلت",
    "سبحان الله وبحمده",
    "الحمدلله كثيرا",
    "حسبي الله عليه توكلت",
    "الحمدلله كثيرا",
    "سبحان الله وبحمده"
  ];
  int index = 0;
  double angle =0;

//void add() {
  // setState(() {
  //   n++;
  //   if(n>30){
  //  n=0;
  //  }
  // });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            width: double.infinity,
            //padding: EdgeInsets.symmetric(vertical: 50,horizontal: 30),
            child: Center(
              child: Column(
                children: [
                  Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(left: MediaQuery
                                .of(context)
                                .size
                                .height * .05),
                            child: Image.asset('assets/images/headsebha.png',)),

                        InkWell(
                          onTap: () {
                            onsebhapressed();
                          },
                          child: Container(
                              margin: EdgeInsets.only(top: MediaQuery
                                  .of(context)
                                  .size
                                  .height * .08),
                              child: Transform.rotate(
                                  angle: angle,
                                  child: Image.asset('assets/images/sebha.png',))),
                        ),
                      ]
                  ),
                  Container(
                      margin: EdgeInsets.all(12),

                      child: Text('عدد التسبيحات', style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
                  Container(

                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Theme
                            .of(context)
                            .primaryColor,
                      ),
                      // padding: EdgeInsets.symmetric(vertical: 4,horizontal: 8),

                      child: Text('$counter', style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,),)),

                  Container(
                      margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Theme
                            .of(context)
                            .primaryColor,
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 4, horizontal: 12),

                      child: Text('${azkar[index]}',
                        style: TextStyle(fontSize: 25, color: Colors.white,),)),

                ],
              ),
            )
        )
      ],
    );
  }

  void onsebhapressed() {
    counter++;
    if(counter<=30){
      if(index== azkar.length-1) {

        index=0;
      }
      index++;
    }
    else if (counter > 30) {
      counter = 0;
    }
    setState(() {
     angle+=20;
    });
  }
}