import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flore/constants.dart';
import 'package:flore/models/plants.dart';
import 'package:flore/ui/scan_page.dart';
import 'package:flore/ui/screens/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class ScannerAnim extends StatefulWidget {
  final FileImage f;
  final File pred;

  const ScannerAnim({Key? key, required this.f, required this.pred})
      : super(key: key);

  @override
  State<ScannerAnim> createState() => _ScannerAnimState();
}

class _ScannerAnimState extends State<ScannerAnim> {
  List<Plant> _plantList = Plant.plantList;
  bool _scanned = false;
  bool _animstop = true;
  String _scanText = "Scanning...";

  @override
  void initState() {
    super.initState();
    // start the 5-second timer when the widget is first built
    Timer(Duration(seconds: 5), () {
      setState(() {
        _scanned = true;
        _scanText = "Scanning complete!";
        _animstop = false; // set _scanned to true after 5 seconds
      });
      Navigator.push(
        context,
        PageTransition(
          child: ScanPage(
            plantID: _plantList[0].plantId,
          ),
          type: PageTransitionType.bottomToTop,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: widget.f,
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
          ),
          SizedBox(
            width: 10,
          ),
          Positioned(
            top: 55,
            left: 20,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  _scanText,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(75, 117, 89, 9),
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: _scanned
                      ? Icon(
                    Icons.check_circle,
                    size: 30,
                    color: Constants.primaryColor,
                  )
                      : CircularProgressIndicator(),
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: widget.f,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Center(
            child: Lottie.asset(
              'animations/scanner_anim.json',
              reverse: true,
              repeat: _animstop,
              //fit: BoxFit.cover
            ),
          ),
          Center(
            child: Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/crop.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}