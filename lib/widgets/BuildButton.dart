import 'package:care/screens/SecondSplashScreen.dart';
import 'package:flutter/material.dart';
class BuildButton extends StatefulWidget {
  const BuildButton({Key? key}) : super(key: key);

  @override
  _BuildButtonState createState() => _BuildButtonState();
}

class _BuildButtonState extends State<BuildButton> {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap:(){Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) =>SecondSplashScreen()));},
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Colors.blue, width: 1)),
        margin: EdgeInsets.only(top:30,left: 70,right: 70),
        width: 30,
        height: 70,
        padding: EdgeInsets.all(20),
        child: Text('Payment',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
