import 'package:flutter/material.dart';
class BuildImageContainer extends StatefulWidget {
  String imgpath;
  BuildImageContainer(this.imgpath);

  @override
  _BuildImageContainerState createState() => _BuildImageContainerState();
}

class _BuildImageContainerState extends State<BuildImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.blue),
          boxShadow:[BoxShadow(color: Colors.blueGrey.withOpacity(0.5),
              blurRadius: 5,spreadRadius: 6
          )],
          color: Colors.white),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(widget.imgpath,fit: BoxFit.fill,),
      ),
    );
  }
}
