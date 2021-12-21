import 'package:flutter/material.dart';
import 'package:care/Widgets/BuildButton.dart';
import 'package:care/Widgets/BuildCustomFormField.dart';
import 'package:care/Widgets/BuildImageContainer.dart';
class Visa extends StatefulWidget {
  const Visa({Key? key}) : super(key: key);

  @override
  _VisaState createState() => _VisaState();
}

class _VisaState extends State<Visa> {
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
          textDirection:TextDirection.rtl ,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color:Color(0xEAF3F9).withOpacity(1) ,
            padding:EdgeInsets.only(top: 50,right: 10,left: 10),
            child:ListView(
              children: [
                BuildImageContainer('lib/assets/visaback.jpg'),
                SizedBox(height: 20,),
                BuildCustomFormField('اسم صاحب البطاقة', '  Thomas Cullen', 500),
                SizedBox(
                    height:10),
                BuildCustomFormField('رقم البطاقة', '   4319  5312  0215  1289', 500),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    BuildCustomFormField('CVV', '   ****', 130),
                    BuildCustomFormField('سارية حتى', ' 09/15', 210)
                  ],
                ),
                BuildButton()
              ],
            ),
          ),
        )
    );
  }
}
