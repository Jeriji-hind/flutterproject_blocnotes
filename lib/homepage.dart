import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:BlocNotes/materials.dart/Texts.dart';
import 'package:BlocNotes/materials.dart/buttons.dart';
import "package:flutter/src/material/colors.dart";
import 'package:get/get.dart';
import 'package:BlocNotes/notepage.dart';
import 'package:BlocNotes/notes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 70, left: 15),
                child: Row(children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/logo.png"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/me.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                ])),
            const SizedBox(height: 150),
            Container(
              padding: const EdgeInsets.only(left: 70),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Vita",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Votre blocnotes vous accompagne.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 180),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: (() {
                  Get.to(() => notepage(),
                      transition: Transition.zoom,
                      duration: (Duration(milliseconds: 400)));
                }),
                child: buttons(
                    text: "Créer une nouvelle note",
                    textcolor: Colors.white,
                    btncolor: Colors.teal.shade900),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: (() {
                  Get.to(() => notes(),
                      transition: Transition.zoom,
                      duration: (Duration(milliseconds: 400)));
                }),
                child: buttons(
                    text: "Voir tous",
                    btncolor: Colors.white,
                    textcolor: Colors.teal.shade900),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/image.jpg"), fit: BoxFit.cover)),
      ),
    );
  }
}
