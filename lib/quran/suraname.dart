import 'package:flutter/material.dart';
import 'package:islami/quran/suradetailsscreen.dart';

class suraNameitem extends StatelessWidget {
String suraname;
int suraindex;
suraNameitem(this.suraname,this.suraindex);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, suradetails.routeName,
        arguments: Suraarguments(suraname,suraindex)
        );},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$suraname',
              style: TextStyle(fontSize: 24),),


          ),

        ],
      ),
    );
  }
}
