import 'package:flore/constants.dart';
import 'package:flore/models/plants.dart';
import 'package:flore/ui/screens/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<Plant> _plantList = Plant.plantList;
  List<Plant> display_list = List.from(_plantList);
  TextEditingController _searchController = TextEditingController();

  void updateList(String value) {
    setState(() {
      display_list = _plantList
          .where((element) =>
              element.plantName.tr
                  .toLowerCase()
                  .contains(value.toLowerCase()) ||
              element.decription.tr
                  .toLowerCase()
                  .contains(value.toLowerCase()) ||
              element.decriptions.tr
                  .toLowerCase()
                  .contains(value.toLowerCase()) ||
              element.decriptionss.tr
                  .toLowerCase()
                  .contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Search a Leaf",
                style: TextStyle(
                  color: Color.fromRGBO(75, 117, 89, 9),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                              Expanded(
                                child: TextField(
                                  controller: _searchController,
                                  onChanged: (value) => updateList(value),
                                  showCursor: true,
                                  cursorColor: Color.fromRGBO(75, 117, 89, 9),
                                  decoration: InputDecoration(
                                    hintText: 'Search Plant',
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(75, 117, 89, 9),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: GestureDetector(
                                  onTap: () {
                                    if (_searchController.text.isNotEmpty) {
                                      _searchController.clear();
                                      updateList('');
                                    } else {
                                      Navigator.pop(context);
                                    }
                                  },
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
                                      _searchController.text.isNotEmpty
                                          ? Icons.close
                                          : Icons.arrow_back_ios,
                                      color: Colors.white,
                                    ),
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
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: display_list.length == 0
                    ? Center(
                        child: Text(
                          "Not Found",
                          style: TextStyle(
                              color: Color.fromRGBO(75, 117, 89, 9),
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child: DetailPage(
                                        plantID: display_list[index].plantId,
                                      ),
                                      type: PageTransitionType.bottomToTop));
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(150, 190, 93, 200),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              height: 80.0,
                              padding: EdgeInsets.only(left: 10, top: 10),
                              margin: EdgeInsets.only(left: 0, top: 10),
                              width: size.width,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: 60.0,
                                          height: 60.0,
                                          decoration: BoxDecoration(
                                            color:
                                                Color.fromRGBO(75, 117, 89, 9),
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 5,
                                          left: 0,
                                          right: 0,
                                          child: SizedBox(
                                            height: 80.0,
                                            child: Image.asset(
                                                display_list[index].imageURL),
                                          ),
                                        ),
                                        Positioned(
                                          bottom: 20,
                                          left: 80,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                display_list[index]
                                                    .plantName
                                                    .tr,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                  color: Constants.blackColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]),
                            ),
                          );
                        }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
