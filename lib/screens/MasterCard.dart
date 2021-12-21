import 'package:flutter/material.dart';
import 'package:care/Widgets/BuildButton.dart';
import 'package:care/Widgets/BuildCustomFormField.dart';
import 'package:care/Widgets/BuildImageContainer.dart';
class MasterCard extends StatefulWidget {
  const MasterCard({Key? key}) : super(key: key);

  @override
  _MasterCardState createState() => _MasterCardState();
}

class _MasterCardState extends State<MasterCard> {
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
            padding:EdgeInsets.only(top: 50,left: 10,right: 10),
            child:ListView(
              children: [
                BuildImageContainer('lib/assets/masterback.jpg'),
                SizedBox(height: 20,
                ),
                BuildCustomFormField('اسم صاحب البطاقة ', '  Lee M . Cardholder', 500),
                SizedBox(
                    height:10),
                BuildCustomFormField('رقم البطاقة', '   5412  7512  3412  3456', 500),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BuildCustomFormField('CVV', '   ****', 130),
                    BuildCustomFormField('سارية حتى', ' 12/23', 210),
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
