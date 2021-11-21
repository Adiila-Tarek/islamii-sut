import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadethdetailsscreen.dart';
import 'package:islami/hadeth/hadethtab.dart';
import 'package:islami/quran/qurantab.dart';
import 'package:islami/quran/suradetailsscreen.dart';
import 'package:islami/radio/radiotab.dart';
import 'package:islami/sebha/sebhatab.dart';

void main() {
  runApp(MyApp());
}

class MythemeData {
  static final primaryColor = Color.fromRGBO(183, 147, 95, 1.0);
  static final selectedIconcolor = Color.fromRGBO(5, 5, 5, 1.0);
  static final unselectedIconcolor = Color.fromRGBO(255, 255, 255, 1.0);
  static final colorblack = Color.fromRGBO(5, 5, 5, 1.0);

}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: MythemeData.primaryColor,
        accentColor: MythemeData.primaryColor,
      ),
      routes: {
        suradetails.routeName:(buildContext)=>suradetails(),
        hadethdetails.routeName:(buildContext)=>hadethdetails(),
        //sebhaitems.routeName:(buildContext)=> sebhaitems(),


      },
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  static const String routeName='home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
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

            title: Text('Islamii',style: TextStyle(color:MythemeData.colorblack,

            ),),
            backgroundColor: Colors.transparent,
          ),
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: MythemeData.primaryColor,
            ),
            child: BottomNavigationBar(
              onTap: (index){
                currentPage=index;
                setState(() {
                });
              },
              currentIndex: currentPage,
              selectedItemColor: MythemeData.selectedIconcolor,
              unselectedItemColor: MythemeData.unselectedIconcolor,
              backgroundColor: MythemeData.primaryColor,
              items: [
                BottomNavigationBarItem(
                    label: 'radio',
                    icon: Image.asset('assets/images/icon_radio.png',width: 36)),
                BottomNavigationBarItem(
                    label: 'sebha',
                    icon: Image.asset('assets/images/icon_sebha.png',width: 36,)),
                BottomNavigationBarItem(
                    label: 'hadeth',
                    icon: Image.asset('assets/images/icon_hadeth.png',width: 36)),
                BottomNavigationBarItem(
                    label: 'quran',
                    icon: Image.asset('assets/images/icon_quran.png',width: 36)),
              ],
            ),
          ),
          body:Container(child: getCurrentPger()),
        ),
      ],
    );
  }

  Widget getCurrentPger(){
    if(currentPage==0){
       return radio();
    }
    else if(currentPage==1){
      return sebha();

    }
   else if(currentPage==2){
      return hadeth();

    }return quran();


  }
}
