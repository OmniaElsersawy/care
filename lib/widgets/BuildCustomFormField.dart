import 'package:flutter/material.dart';
class BuildCustomFormField extends StatefulWidget {
  String label;
  double width;
  String hint;
  BuildCustomFormField(this.label,this.hint,this.width);

  @override
  _BuildCustomFormFieldState createState() => _BuildCustomFormFieldState();
}

class _BuildCustomFormFieldState extends State<BuildCustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10,bottom: 5,),
          child: Text(
            widget.label,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          height: 53,
          width:widget.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0,),
            child: TextFormField(
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
                hintText: widget.hint,
                fillColor: Colors.white,
                enabled: false,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
