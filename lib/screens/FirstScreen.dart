import 'package:flutter/material.dart';

import 'CartScreen.dart';
import 'PreviousAnalysis.dart';
import 'HomeScreen.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  List screens=[HomeScreen(),CartScreen(),PreviousAnalysis()];
  List appbar=['التحاليل','التحاليل المحجوزة','تحاليلك السابقة'];
  int currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xEAF3F9).withOpacity(1),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(appbar[currentindex],
          style: TextStyle(color: Colors.white, fontSize: 40,),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      body: Directionality(
          textDirection: TextDirection.rtl,
          child:screens[currentindex]),
      bottomNavigationBar:
      BottomNavigationBar(onTap:(index){
        setState(() {
          currentindex=index;
        });
      },
          type:BottomNavigationBarType.fixed,
          backgroundColor:Colors.blue ,
          selectedItemColor: Color(0xEAF3FD).withOpacity(0.6),
          unselectedItemColor: Colors.white,
          currentIndex: currentindex,

          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home,),
              label:'التحاليل',
            ),BottomNavigationBarItem(
              icon:Icon(Icons.shopping_cart_sharp,),
              label :'التحاليل المحجوزة',
            ),
            BottomNavigationBarItem(
              icon:Icon(Icons.menu,),
              label :'تحاليلك السابقة',
            ),

          ]
      ),
    );
  }
}
