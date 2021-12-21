import 'package:flutter/material.dart';
import 'package:care/Widgets/BuildCircleAvatar.dart';
import 'package:care/Widgets/BuildPasswordTextField.dart';
import 'package:care/Widgets/BuildTextFormField.dart';

import 'FirstScreen.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl, child:Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Color(0xEAF3F9).withOpacity(1)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BuildCircleAvatar(),
                SizedBox(
                  height: 25,
                ),
                BuildTextFormField(false, 'الاسم بالكامل', TextInputType.name),
                SizedBox(
                  height: 10,
                ),
                BuildTextFormField(
                    false, 'تاريخ الميلاد', TextInputType.datetime),
                SizedBox(
                  height: 10,
                ),
                BuildTextFormField(false, 'رقم الهاتف', TextInputType.phone),
                SizedBox(
                  height: 10,
                ),
                BuildPasswordFormField(
                    true, 'كلمة المرور', TextInputType.visiblePassword),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => FirstScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.blue, width: 1)),
                    margin: EdgeInsets.all(15),
                    width: 150,
                    height: 60,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'تسجيل الدخول',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ) );
  }
}
