import 'package:flutter/material.dart';

class BuildTextFormField extends StatefulWidget {
  bool secure = false;
  String hinttext;
  TextInputType keyboardtype = TextInputType.name;
  BuildTextFormField(this.secure, this.hinttext, this.keyboardtype);
  @override
  _BuildTextFormFieldState createState() => _BuildTextFormFieldState();
}

class _BuildTextFormFieldState extends State<BuildTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardtype,
      obscureText: widget.secure,
      cursorColor: Colors.blue,
      style: TextStyle(
          color: Colors.blue,
          fontSize: 15,
          fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        focusedBorder:
        OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide:BorderSide(color: Colors.blue)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide:BorderSide(color: Colors.blue)),
        hintText: widget.hinttext,
        hintStyle: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 15),
      ),
    );
  }
}