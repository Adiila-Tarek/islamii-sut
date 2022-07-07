import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class hadethdetails extends StatefulWidget {
  static const routeName ='hadethdetails';

  @override
  _hadethdetailsState createState() => _hadethdetailsState();
}

class _hadethdetailsState extends State<hadethdetails> {
  List<String>ahadeth = [
  ];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as hadetharguments;
    loadhadethdetails(arg.hadethindex);

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

              title: Text('${arg.hadetname}',
                style: TextStyle(color: MythemeData.colorblack,

                ),),
              backgroundColor: Colors.transparent,
            ),
            backgroundColor: Colors.transparent,

            body: Container(
                child: ahadeth.isEmpty ? Center(child: CircularProgressIndicator
                  (valueColor: AlwaysStoppedAnimation<Color>(
                  MythemeData.primaryColor,),)
                ) : ListView.builder(itemBuilder: (buildcontext, index) {
                  return Text(ahadeth[index]);
                }, itemCount: ahadeth.length,
                )
            ),
          ),
        ]
    );
  }

  void loadhadethdetails(int index) async {
    String contents = await rootBundle.loadString(
        'assets/ahadethfile/${index + 1}.txt');
    List<String> sonna = contents.split('\n');
    this.ahadeth = sonna;
    setState(() {

    });
  }
}

class hadetharguments{
  String hadetname;
  int hadethindex;
  hadetharguments(this.hadetname,this.hadethindex);

}