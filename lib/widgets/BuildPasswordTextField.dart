import 'package:flutter/material.dart';

class BuildPasswordFormField extends StatefulWidget {
  bool secure = false;
  String hinttext;
  bool visability=false;
  TextInputType keyboardtype = TextInputType.name;
  BuildPasswordFormField(this.secure, this.hinttext, this.keyboardtype);
  @override
  _BuildPasswordFormField createState() => _BuildPasswordFormField();
}

class _BuildPasswordFormField extends State<BuildPasswordFormField> {
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
          suffixIcon:IconButton(icon:Icon(widget.visability?Icons.visibility_off:Icons.visibility,color: Colors.blue,), onPressed: () { setState(() {
            widget.visability= !widget.visability;
            widget.secure=!widget.secure;
          }); },)
      ),
    );
  }
}