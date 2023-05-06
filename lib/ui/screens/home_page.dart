import 'package:flore/constants.dart';
import 'package:flore/models/plants.dart';
import 'package:flore/ui/scan_page.dart';
import 'package:flore/ui/screens/DetailPage.dart';
import 'package:flore/ui/screens/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    List<Plant> _plantList = Plant.plantList;

    //Toggle Favorite button
    bool toggleIsFavorated(bool isFavorited) {
      return !isFavorited;
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //for search bar
            GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(child: SearchPage(), type: PageTransitionType.fade));// Do something when the button is pressed
              },
              child: Container(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: size.width * 0.95,
                      height: 40,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          depth: -1.5,
                          intensity: 1.5,
                          color: Color.fromRGBO(150, 190, 93, 200),
                          shadowLightColorEmboss: Colors.grey.withOpacity(0.3),
                          shadowDarkColorEmboss: Colors.grey.withOpacity(0.3),
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          shape: NeumorphicShape.flat,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Search Plant',
                                style: TextStyle(
                                  color: Color.fromRGBO(75, 117, 89, 9),
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                width: 175.5,
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                    depth: 0,
                                    intensity: 0,
                                    color: Color.fromRGBO(75, 117, 89, 9),
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                    shape: NeumorphicShape.flat,
                                  ),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //for text Recommended
            Container(
              padding: const EdgeInsets.only(left: 16, bottom: 20, top: 15),
              child: const Text(
                'Recommended',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Color.fromRGBO(75, 117, 89, 9),
                ),
              ),
            ),

            //for card Recommended
            SizedBox(
              height: size.height * 0.4,
              child: ListView.builder(
                itemCount: _plantList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: DetailPage(
                                plantID: _plantList[index].plantId,
                              ),
                              type: PageTransitionType.bottomToTop));
                    },
                    child: Container(
                      width: 240,
                      child: Neumorphic(
                        margin: const EdgeInsets.symmetric(horizontal: 11),
                        style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          depth: 8,
                          lightSource: LightSource.topLeft,
                          color: const Color.fromRGBO(125, 180, 50, 170),
                          intensity: 0.5,
                          shadowLightColor:
                              const Color.fromRGBO(130, 180, 50, 180),
                          shadowDarkColor: const Color.fromRGBO(75, 117, 89, 9),
                        ),
                        child: Stack(
                          children: [
                            //favorite button
                            Positioned(
                              top: 10,
                              right: 20, // Fav button
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      bool isFavorited = toggleIsFavorated(
                                          _plantList[index].isFavorated);
                                      _plantList[index].isFavorated =
                                          isFavorited;
                                    });
                                  },
                                  icon: Icon(
                                    _plantList[index].isFavorated == true
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Color.fromRGBO(75, 117, 89, 9),
                                  ),
                                  iconSize: 30,
                                ),
                              ),
                            ),

                            //image
                            Positioned(
                              left: 50,
                              right: 50,
                              top: 50,
                              bottom: 50,
                              child: Image.asset(_plantList[index].imageURL),
                            ),

                            //Plants name
                            Positioned(
                              bottom: 15,
                              left: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _plantList[index].plantName.tr,
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //more button
                            Positioned(
                              bottom: 15,
                              right: 20,
                              height: 30,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          child: DetailPage(
                                            plantID: _plantList[index].plantId,
                                          ),
                                          type:
                                              PageTransitionType.bottomToTop));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 7),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(75, 117, 89, 9),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Text(
                                    'More',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            //for text Favorites
            Container(
              padding: const EdgeInsets.only(left: 16, bottom: 20, top: 15),
              child: const Text(
                'Favorites',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Color.fromRGBO(75, 117, 89, 9),
                ),
              ),
            ),

            // Favorites section
            SizedBox(
              height: size.height * 0.2,
              child: ListView.builder(
                itemCount:
                    _plantList.where((plant) => plant.isFavorated).length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  Plant plant = _plantList
                      .where((plant) => plant.isFavorated)
                      .toList()[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: DetailPage(
                                plantID: _plantList[index].plantId,
                              ),
                              type: PageTransitionType.bottomToTop));
                    },
                    child: Container(
                      width: 300,
                      child: Neumorphic(
                        margin: const EdgeInsets.symmetric(horizontal: 11),
                        style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          depth: 8,
                          lightSource: LightSource.topLeft,
                          color: const Color.fromRGBO(125, 180, 50, 170),
                          intensity: 0.5,
                          shadowLightColor:
                              const Color.fromRGBO(130, 180, 50, 180),
                          shadowDarkColor: const Color.fromRGBO(75, 117, 89, 9),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10,
                              left: 20, // Fav button
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      plant.isFavorated = !plant.isFavorated;
                                    });
                                  },
                                  icon: Icon(Icons.favorite,
                                      color: Color.fromRGBO(75, 117, 89, 9)),
                                  iconSize: 30,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 150,
                              right: 0,
                              top: 20,
                              bottom: 20,
                              child: Image.asset(_plantList[index].imageURL),
                            ),
                            Positioned(
                              bottom: 35,
                              left: 30,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _plantList[index].plantName.tr,
                                    style: const TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
