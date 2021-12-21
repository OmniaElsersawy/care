import 'package:flutter/material.dart';
import 'package:care/Screens/Payment.dart';
class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 30,right: 20,left: 20),
          color:Color(0xEAF3F9).withOpacity(1) ,
          child: InkWell(
            onTap:(){Navigator.push(context,
                MaterialPageRoute(builder: (context) =>Payment()));},
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
          )
      ),
    );

  }
}
