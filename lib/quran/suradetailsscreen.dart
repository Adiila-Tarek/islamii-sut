import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class suradetails extends StatefulWidget {
  static const String routeName ='sura-details';

  @override
  _suradetailsState createState() => _suradetailsState();
}

class _suradetailsState extends State<suradetails> {
  List<String> verses=[

  ];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as Suraarguments  ;
    loadsuradetails(arg.suraindex);
    return Stack(
      children: [
      Image.asset(
      'assets/images/bg3.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    ),
      Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,

        title: Text('${arg.suraname}',
          style: TextStyle(color: MythemeData.colorblack,

        ),),
        backgroundColor: Colors.transparent,
      ),
       backgroundColor:Colors.transparent,

       body:Container(
         child: verses.isEmpty? Center(child: CircularProgressIndicator
           ( valueColor:AlwaysStoppedAnimation<Color>(MythemeData.primaryColor,),)
         ):ListView.builder(itemBuilder: (buildcontext,index){
           return Text(verses[index]);
         },itemCount: verses.length,
         )
       ) ,
    ),
      ]
    );
  }

   void loadsuradetails(int index) async {
   String content= await rootBundle.loadString('assets/files/${index+1}.txt');
  // print(content);
   List<String> ayat= content.split('\n');
   this.verses=ayat;
   setState(() {

   });
  }
}
class Suraarguments{
  String suraname;
  int suraindex;
  Suraarguments(this.suraname,this.suraindex);

}
