import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notewidget extends StatelessWidget {
  final String text;
  const notewidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 15,
      decoration: BoxDecoration(
        color: Colors.teal.shade900.withOpacity(0.9),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
