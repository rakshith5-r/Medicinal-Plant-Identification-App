import 'dart:io';
import 'package:flore/constants.dart';
import 'package:flore/models/image_picker_controller.dart';
import 'package:flore/ui/scan_page.dart';
import 'package:flore/ui/screens/home_page.dart';
import 'package:flore/ui/screens/profile_page.dart';
import 'package:flore/ui/screens/scan_anim.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with SingleTickerProviderStateMixin {
  int _bottomNavIndex = 0;

  //stream controller
  Locale localeNew = Locale('en', 'US');

  String _selectedLanguage = 'English';

  // List of the pages
  List<Widget> pages = const [    HomePage(),    ProfilePage(),  ];

  // List of the pages icons
  List<IconData> iconList = [    Icons.home,    Icons.person,  ];

  // List of the pages title
  List<String> titleList = const [    'Home',    'Profile'  ];

  bool _showPopupButtons = false;
  bool _fabTapped = false;
  late AnimationController _animationController;
  late Animation<double> _animation;

  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut);
    _animationController.addListener(() {
      setState(() {

      });
    }
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> _languages = ['English', 'Kannada', 'Hindi'];
    return Scaffold(
      appBar: AppBar(
      automaticallyImplyLeading: false, // Removes back button
      title: Row(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              titleList[_bottomNavIndex],
              style: TextStyle(
                color: Color.fromRGBO(75, 117, 89, 9),
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
          ),
          DropdownButton<String>(
            underline: SizedBox(),
            icon: Icon(
              Icons.language,
              color: Color.fromRGBO(75, 117, 89, 9),
              size: 30,
            ),
            onChanged: (newValue) {
              //print("hi");
              //Get.updateLocale(Locale('ka', 'IN'));
              //setState(() {
              _selectedLanguage = newValue!;
              // var locale = Locale('ka', 'IN');
              // Get.updateLocale(locale);
              //print(newValue);
              if (newValue == 'English') {
                //MyApp.setLocale(context, Locale('en', 'US'));
                localeNew = Locale('en', 'US');
                //widget.localeController.add(Locale('en', 'US'));
                Get.updateLocale(localeNew);
              } else if (newValue == 'Kannada') {
                //MyApp.setLocale(context, Locale('ka', 'IN'));
                localeNew = Locale('ka', 'IN');
                //widget.localeController.add(Locale('ka', 'IN'));
                Get.updateLocale(localeNew);
                // Future.delayed(Duration.zero, () {
                //   Get.updateLocale(Locale('ka')); // Update locale to French
                // });
              } else {
                //MyApp.setLocale(context, Locale('hi', 'IN'));
                localeNew = Locale('hi', 'IN');
                //widget.localeController.add(Locale('hi', 'IN'));
                Get.updateLocale(localeNew);
              }
              //});
            },
            value: _selectedLanguage,
            items: _languages.map((language) {
              return DropdownMenuItem<String>(
                value: language,
                child: Text(
                  language,
                  style: TextStyle(
                    color: Color.fromRGBO(75, 117, 89, 9),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0.0,
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showPopupButtons = !_showPopupButtons;
            if (_showPopupButtons) {
              _animationController.forward();
              _fabTapped = true;
            } else {
              _animationController.reverse();
              _fabTapped = false;
            }
          });
        },
        child: _fabTapped ? Icon(Icons.close) : Image.asset(
          'assets/images/img.png',
          height: 30.0,
        ),
        backgroundColor: Color.fromRGBO(75, 117, 89, 9),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Color.fromRGBO(75, 117, 89, 9),
        activeColor: Color.fromRGBO(75, 117, 89, 9),
        inactiveColor: Colors.black.withOpacity(.5),
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
      body: Stack(
        children: [
          IndexedStack(
            index: _bottomNavIndex,
            children: pages,
          ),
          AnimatedAlign(
            alignment: _showPopupButtons ? Alignment(0.4,0.9) : Alignment(0.0,1.15),
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  margin: EdgeInsets.only(bottom: 12.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0),
                        blurRadius: 6.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () async {
                      await controller.captureImage();// TODO: implement action for camera icon
                      FileImage f =FileImage(File(controller.imagePath.toString()));
                      if(controller.imagePath.toString() != ""){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                          return ScannerAnim(f:f);
                        },));
                      }else{
                        Navigator.popUntil(context, (route) => true);
                      }

                    },
                    icon: Icon(Icons.camera_alt_rounded),
                    color: Color.fromRGBO(75, 117, 89, 9),
                  ),
                ),
              ],
            ),
          ),
          AnimatedAlign(
            alignment: _showPopupButtons ? Alignment(-0.4,0.9) : Alignment(0.0,1.15),
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 60.0,
                  height: 60.0,
                  margin: EdgeInsets.only(bottom: 12.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0),
                        blurRadius: 6.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: () async {
                      await controller.getImage();// TODO: implement action for photo icon
                      FileImage f =FileImage(File(controller.imagePath.toString()));
                      if(controller.imagePath.toString() != ""){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context){
                              return ScannerAnim(f: f);
                            }
                        ));
                      }else{
                        Navigator.popUntil(context, (route) => true);
                      }
                    },
                    icon: Icon(Icons.photo_library_rounded),
                    color: Color.fromRGBO(75, 117, 89, 9),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

