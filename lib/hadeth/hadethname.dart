import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadethdetailsscreen.dart';

class hadethnameitem extends StatelessWidget {
String hadethname;
int hadethindex;
hadethnameitem(this.hadethname,this.hadethindex,);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      Navigator.pushNamed(context, hadethdetails.routeName,
          arguments: hadetharguments(hadethname,hadethindex)
      );},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('$hadethname',
              style: TextStyle(fontSize: 24),),


          ),
        ],
      ),
    );
  }
}
