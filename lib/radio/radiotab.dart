import 'package:flutter/material.dart';

class radio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 100),

              child: Image.asset('assets/images/radio.png')),
        ),
        Container(
          margin: EdgeInsets.only(top: 40),
            child: Text('اذاعه القران الكريم',style: TextStyle(fontSize: 25),)),
       Container(
         margin: EdgeInsets.only(top: 50),

         child: Image.asset('assets/images/radioIcon.png')),


      ],
    );
  }
}
