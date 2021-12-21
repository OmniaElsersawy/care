import 'package:flutter/material.dart';
import 'package:care/Widgets/BuildInkwell.dart';
import 'Cash.dart';
import 'MasterCard.dart';
import 'PayPal.dart';
import 'Visa.dart';
class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'طريقة الدفع',
          style: TextStyle(color: Colors.white, fontSize: 40,),
        ),
        centerTitle: true,
        elevation: 5,
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 30,right: 20,left: 20),
          color:Color(0xEAF3F9).withOpacity(1) ,
          child: GridView.count(mainAxisSpacing: 20,crossAxisSpacing: 10,childAspectRatio:1.5/2,
            crossAxisCount: 2,
            physics:NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              BuildInkwell('lib/assets/visa.jpg', Visa()),
              BuildInkwell('lib/assets/mastercard.png', MasterCard()),
              BuildInkwell('lib/assets/paypal.png', PayPal()),
              BuildInkwell('lib/assets/cash.png', Cash())
            ],),
        ),
      ),
    );
  }
}


