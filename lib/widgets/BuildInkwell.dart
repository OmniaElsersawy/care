import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BuildInkwell extends StatefulWidget {
  String image;
  dynamic screen;
  BuildInkwell(this.image,this.screen);

  @override
  _BuildInkwellState createState() => _BuildInkwellState();
}

class _BuildInkwellState extends State<BuildInkwell> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 100,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.blue),
            color: Colors.white),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(widget.image,
            fit: BoxFit.contain,),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (_){
          return widget.screen;
        }));
      },
    );
  }
}
