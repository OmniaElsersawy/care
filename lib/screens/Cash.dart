import 'package:flutter/material.dart';
import 'package:care/Widgets/BuildButton.dart';
import 'package:care/Widgets/BuildCustomFormField.dart';
import 'package:care/Widgets/BuildImageContainer.dart';
class Cash extends StatefulWidget {
  const Cash({Key? key}) : super(key: key);

  @override
  _CashState createState() => _CashState();
}

class _CashState extends State<Cash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme:IconThemeData(
              size: 60,
              color:Colors.white
          ) ,leadingWidth: 85,
          backgroundColor: Colors.blue,
          title: Text(
            'طريقة الدفع',
            style: TextStyle(color: Colors.white, fontSize: 40,),
          ),
          centerTitle: true,
          elevation: 5,
        ),
        body:Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color:Color(0xEAF3F9).withOpacity(1) ,
            padding:EdgeInsets.only(top: 50,left: 20,right: 20),
            child:ListView(
              children: [
                BuildImageContainer('lib/assets/cash.png'),
                SizedBox(height: 20,),
                BuildCustomFormField('الاسم بالكامل', ' أمنية محمد السرساوي', 500),
                BuildButton()

              ],
            ),
          ),
        )
    );
  }
}
