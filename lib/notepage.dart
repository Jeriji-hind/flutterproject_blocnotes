import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:BlocNotes/materials.dart/buttons.dart';
import 'package:BlocNotes/materials.dart/textfields.dart';
import 'package:get/get.dart';

class notepage extends StatelessWidget {
  const notepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameCTRL = TextEditingController();
    TextEditingController textCTRL = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 10, right: 15),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/image.jpg"), fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Column(
              children: [
                textfields(
                    textcontroller: nameCTRL, hinttext: "Titre", border: 25),
                SizedBox(
                  height: 10,
                ),
                textfields(
                  textcontroller: textCTRL,
                  hinttext: "Entrer votre note",
                  border: 20,
                  maxlines: 5,
                ),
                SizedBox(
                  height: 30,
                ),
                buttons(
                    btncolor: Colors.teal.shade900,
                    text: "Sauvegarder",
                    textcolor: Colors.white)
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            )
          ],
        ),
      ),
    );
  }
}
