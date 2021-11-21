import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadethname.dart';
import 'package:islami/main.dart';
import '../main.dart';


class hadeth extends StatelessWidget {
final List<String>hadeethnumber= [
  'حديث رقم 1'
  , 'حديث رقم 2'
  , 'حديث رقم 3'
  , 'حديث رقم 4'
  , 'حديث رقم 5'
  , 'حديث رقم 6'
  , 'حديث رقم 7'
  , 'حديث رقم 8'
  , 'حديث رقم 9'
  , 'حديث رقم 10'
  , 'حديث رقم 11'
  , 'حديث رقم 12'
  , 'حديث رقم 13'
  , 'حديث رقم 14'
  , 'حديث رقم 15'
  , 'حديث رقم 16'
  , 'حديث رقم 17'
  , 'حديث رقم 18'
  , 'حديث رقم 19'
  , 'حديث رقم 20'
];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/hadeth_logo.png',
            )),
        Container(
          height: 2,
          width: double.infinity,
          color: MythemeData.primaryColor,
        ),
        Text('الاحاديث',style: TextStyle(fontSize: 25),),
        Container(
          height: 2,
          width: double.infinity,
          color: MythemeData.primaryColor,
        ),
        Expanded(
            flex: 3,
            child:ListView.builder(itemBuilder: (buildContext,index){
              return hadethnameitem(hadeethnumber[index], index);
            },itemCount: hadeethnumber.length,)
        )
      ],
    );

  }
}
