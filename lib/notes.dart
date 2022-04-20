import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:BlocNotes/homepage.dart';
import 'package:BlocNotes/main.dart';
import 'package:BlocNotes/materials.dart/buttons.dart';
import 'package:BlocNotes/materials.dart/notewidget.dart';
import 'package:get/get.dart';
import 'package:BlocNotes/notepage.dart';

class notes extends StatelessWidget {
  const notes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List notes = ["Todo's notes", "Studies notes", "Personal notes"];
    final deleteicon = Container(
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      child: const Icon(
        Icons.delete,
        color: Color.fromARGB(255, 145, 88, 10),
      ),
      alignment: Alignment.centerRight,
    );
    return Scaffold(
        body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            //padding: const EdgeInsets.only(left: 5, right: 15),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/image.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    SizedBox(
                      height: 70,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    )
                  ]),
                  Positioned(
                    top: 300,
                    child: Container(
                      padding: const EdgeInsets.only(top: 30),
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Column(children: [
                        Container(
                          padding: const EdgeInsets.only(right: 20, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(() => Homepage(),
                                      transition: Transition.fade,
                                      duration: (Duration(milliseconds: 300)));
                                },
                                child: Icon(
                                  Icons.home,
                                  color: Color.fromARGB(255, 145, 88, 10),
                                  size: 30,
                                ),
                              ),
                              // SizedBox(
                              //   width: 5,
                              // ),
                              Row(
                                children: [
                                  Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 240, 153, 30)),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.calendar_month_sharp,
                                      color: Color.fromARGB(255, 240, 153, 30),
                                      size: 25,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    child: InkWell(
                                      onTap: () {
                                        Get.to(() => notepage(),
                                            transition: Transition.fade,
                                            duration:
                                                (Duration(milliseconds: 300)));
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color:
                                            Color.fromARGB(255, 240, 153, 30),
                                        size: 20,
                                      ),
                                    ),
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: ListView.builder(
                              itemCount: notes.length,
                              itemBuilder: ((context, index) {
                                return Dismissible(
                                  background: deleteicon,
                                  onDismissed: (DismissDirection direction) {},
                                  confirmDismiss:
                                      (DismissDirection direction) async {
                                    if (direction ==
                                        DismissDirection.startToEnd) {
                                      showModalBottomSheet(
                                          backgroundColor: Colors.transparent,
                                          context: context,
                                          builder: (_) {
                                            return Container(
                                              height: 300,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    topRight:
                                                        Radius.circular(5)),
                                                color: Colors.black
                                                    .withOpacity(0.5),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 10, right: 10),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    buttons(
                                                        btncolor:
                                                            Color.fromARGB(255,
                                                                145, 88, 10),
                                                        text: "Ouvrir",
                                                        textcolor:
                                                            Colors.white),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    buttons(
                                                        btncolor:
                                                            Color.fromARGB(255,
                                                                    145, 88, 10)
                                                                .withOpacity(
                                                                    0.6),
                                                        text: "Modifier",
                                                        textcolor: Colors.white)
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                      return false;
                                    } else {
                                      return Future.delayed(
                                          Duration(milliseconds: 200),
                                          () =>
                                              direction ==
                                              DismissDirection.endToStart);
                                    }
                                  },
                                  key: ObjectKey(index),
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        left: 15, right: 15, bottom: 10),
                                    child: notewidget(text: notes[index]),
                                  ),
                                );
                              })),
                        )
                      ]),
                    ),
                  ),
                ])));
  }
}
