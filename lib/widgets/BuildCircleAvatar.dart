import 'package:flutter/material.dart';

class BuildCircleAvatar extends StatefulWidget {
  const BuildCircleAvatar({Key? key}) : super(key: key);

  @override
  _BuildCircleAvatarState createState() => _BuildCircleAvatarState();
}

class _BuildCircleAvatarState extends State<BuildCircleAvatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white,
        radius: 40,
        child: Icon(
          Icons.account_circle_rounded,
          color: Colors.blue,
          size: 70,
        )
    );
  }
}
