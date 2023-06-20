import 'package:flore/constants.dart';
import 'package:flore/models/plants.dart';
import 'package:flore/ui/screens/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class ScanPage extends StatefulWidget {
  final int plantID;
  final String title;
  final String accuracyLabel;
  final int id;
  const ScanPage(
      {Key? key,
      required this.plantID,
      required this.title,
      required this.accuracyLabel,
      required this.id});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  List<Plant> _plantList = Plant.plantList;

  @override
  Widget build(BuildContext context) {
    print(widget.id);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
      child: widget.id >= 0
          ? Scaffold(
              backgroundColor: Colors.transparent,
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        child: DetailPage(
                          plantID: widget.plantID,
                        ),
                        type: PageTransitionType.bottomToTop,
                      ),
                    );
                  },
                  child: Container(
                    child: Neumorphic(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 70),
                      style: NeumorphicStyle(
                        depth: 8,
                        lightSource: LightSource.topLeft,
                        color: const Color.fromRGBO(125, 180, 50, 170),
                        intensity: 0.5,
                        shadowLightColor:
                            const Color.fromRGBO(130, 180, 50, 180),
                        shadowDarkColor: const Color.fromRGBO(75, 117, 89, 9),
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20),
                        ),
                      ),
                      child: Container(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: Image.asset(
                                      _plantList[widget.plantID].imageURL,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  //_plantList[widget.plantID].plantName.tr,
                                  "${widget.title}",
                                  style: TextStyle(
                                    color: Color.fromRGBO(75, 117, 89, 9),
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${widget.accuracyLabel}",
                                  style: TextStyle(
                                    color: Color.fromRGBO(75, 117, 89, 9),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(width: 30),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageTransition(
                                    child: DetailPage(
                                      plantID: widget.plantID,
                                    ),
                                    type: PageTransitionType.bottomToTop,
                                  ),
                                );
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromRGBO(75, 117, 89, 9),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Scaffold(
              backgroundColor: Colors.transparent,
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.pushReplacement(
                    //   context,
                    //   PageTransition(
                    //     child: DetailPage(
                    //       plantID: widget.plantID,
                    //     ),
                    //     type: PageTransitionType.bottomToTop,
                    //   ),
                    // );
                  },
                  child: Container(
                    child: Neumorphic(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 70),
                      style: NeumorphicStyle(
                        depth: 8,
                        lightSource: LightSource.topLeft,
                        color: const Color.fromRGBO(125, 180, 50, 170),
                        intensity: 0.5,
                        shadowLightColor:
                            const Color.fromRGBO(130, 180, 50, 180),
                        shadowDarkColor: const Color.fromRGBO(75, 117, 89, 9),
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(20),
                        ),
                      ),
                      child: Container(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.only(),
                            //   child: Container(
                            //     height: 80,
                            //     width: 80,
                            //     decoration: BoxDecoration(
                            //       color: Colors.white,
                            //       borderRadius: BorderRadius.circular(40),
                            //     ),
                            //     // child: Padding(
                            //     //   padding: const EdgeInsets.all(8.0),
                            //     //   child: ClipRRect(
                            //     //     borderRadius: BorderRadius.circular(40),
                            //     //     child: Image.asset(
                            //     //       _plantList[widget.plantID].imageURL,
                            //     //     ),
                            //     //   ),
                            //     // ),
                            //   ),
                            // ),
                            // SizedBox(width: 30),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  //_plantList[widget.plantID].plantName.tr,
                                  "${widget.title}",
                                  style: TextStyle(
                                    color: Color.fromRGBO(75, 117, 89, 9),
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(width: 30),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromRGBO(75, 117, 89, 9),
                                ),
                                child: Icon(
                                  Icons.close,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
