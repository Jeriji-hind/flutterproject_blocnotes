import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textfields extends StatelessWidget {
  final TextEditingController textcontroller;
  final String hinttext;
  final double border;
  final int? maxlines;
  const textfields(
      {Key? key,
      required this.textcontroller,
      required this.hinttext,
      required this.border,
      this.maxlines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      controller: textcontroller,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white10,
          hintText: hinttext,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(border),
              borderSide: BorderSide(
                color: Colors.white54,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(border),
              borderSide: BorderSide(
                color: Colors.white54,
              ))),
    );
  }
}
