import 'package:flutter/cupertino.dart';

class buttons extends StatelessWidget {
  final Color btncolor;
  final String text;
  final Color textcolor;
  const buttons(
      {Key? key,
      required this.btncolor,
      required this.text,
      required this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height / 14,
      decoration: BoxDecoration(
          color: btncolor, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 20, color: textcolor),
        ),
      ),
    );
  }
}
