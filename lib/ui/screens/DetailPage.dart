import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../constants.dart';
import '../../models/plants.dart';

class DetailPage extends StatefulWidget {
  final int plantID;
  const DetailPage({Key? key, required this.plantID}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  //Toggle Favorite button
  bool toggleIsFavorated(bool isFavorited) {
    return !isFavorited;
  }

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Plant> _plantList = Plant.plantList;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 50,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Constants.primaryColor.withOpacity(0.15),
                      ),
                      child: Icon(
                        Icons.close,
                        color: Constants.primaryColor,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      debugPrint('favorite');
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Constants.primaryColor.withOpacity(0.15),
                      ),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            bool isFavorited = toggleIsFavorated(
                                _plantList[widget.plantID].isFavorated);
                            _plantList[widget.plantID].isFavorated =
                                isFavorited;
                          });
                        },
                        icon: Icon(
                          _plantList[widget.plantID].isFavorated == true
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Color.fromRGBO(75, 117, 89, 9),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Positioned(
            top: 85,
            left: 0,
            right: 20,
            child: Container(
              width: size.width * 0.8,
              height: size.height * 1,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 0,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        depth: 5,
                        intensity: 0.7,
                        color: const Color.fromRGBO(125, 180, 50, 170),
                        shadowDarkColor: Colors.grey,
                        shadowLightColor: Colors.white,
                      ),
                      child: Container(
                        height: 300,
                        width: 300,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 10,
                              right: 10,
                              top: 20,
                              bottom: 30,
                              child: Image.asset(
                                _plantList[widget.plantID].imageURL,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ), //image
                  Positioned(
                    bottom: 100,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding:
                          const EdgeInsets.only(bottom: 0, left: 30, right: 20),
                      height: size.height * 0.47,
                      width: size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _plantList[widget.plantID].plantName.tr,
                                    style: TextStyle(
                                      color: Color.fromRGBO(75, 117, 89, 9),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          //carasoul slide
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 320,
                                    width: double.infinity,
                                    child: PageView(
                                      children: [
                                        SingleChildScrollView(
                                          child: Container(
                                            height: 450,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            color: Colors.white,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Plant Details",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        10), // Add some spacing between the two text widgets
                                                Text(
                                                  _plantList[widget.plantID]
                                                      .decription
                                                      .tr,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Container(
                                            height: 500,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 10),
                                            color: Colors.white,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Medicinal Applications",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                    height:
                                                        10), // Add some spacing between the two text widgets
                                                Text(
                                                  _plantList[widget.plantID]
                                                      .decriptions
                                                      .tr,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: Colors.black87,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Container(
                                            height: 500,
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 10),
                                            color: Colors.white,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Text(
                                                    "Medicinal Usage",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          10), // Add some spacing between the two text widgets
                                                  Text(
                                                    _plantList[widget.plantID]
                                                        .decriptionss
                                                        .tr,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color: Colors.black87,
                                                      fontSize: 15.0,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                      onPageChanged: (index) {
                                        setState(() {
                                          pageIndex = index;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  CarouselIndicator(
                                    color: Color.fromRGBO(75, 117, 89, 9)
                                        .withOpacity(0.9),
                                    count: 3,
                                    index: pageIndex,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlantFeature extends StatelessWidget {
  final String plantFeature;
  final String title;
  const PlantFeature({
    Key? key,
    required this.plantFeature,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Constants.blackColor,
          ),
        ),
        Text(
          plantFeature,
          style: TextStyle(
            color: Constants.primaryColor,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
