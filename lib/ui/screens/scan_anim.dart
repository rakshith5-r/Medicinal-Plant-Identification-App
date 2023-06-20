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
import 'package:image/image.dart' as img;

import '../../classifier/classifier.dart';

const _labelsFileName = 'assets/model.txt';
const _modelFileName = 'model.tflite';

class ScannerAnim extends StatefulWidget {
  final FileImage f;
  final File pred;

  const ScannerAnim({Key? key, required this.f, required this.pred})
      : super(key: key);

  @override
  State<ScannerAnim> createState() => _ScannerAnimState();
}

enum _ResultStatus {
  notStarted,
  notFound,
  found,
}

class _ScannerAnimState extends State<ScannerAnim> {
  List<Plant> _plantList = Plant.plantList;
  bool _scanned = false;
  bool _animstop = true;
  String _scanText = "Scanning...";
  late int plantid;
  //Result

  _ResultStatus _resultStatus = _ResultStatus.notStarted;
  String _plantLabel = ''; // Name of Error Message
  double _accuracy = 0.0;
  late Classifier _classifier;

  //Result

  @override
  void initState() {
    super.initState();
    _loadClassifier();
    // start the 5-second timer when the widget is first built
    Timer(Duration(seconds: 5), () {
      setState(() {
        _scanned = true;
        _scanText = "Scanning complete!";
        _analyzeImage(widget.pred);
        _animstop = false; // set _scanned to true after 5 seconds
      });
      //check
      var title = '';
      if (_resultStatus == _ResultStatus.notFound) {
        title = 'Fail to recognise';
      } else if (_resultStatus == _ResultStatus.found) {
        title = _plantLabel;
      } else {
        title = '';
      }

      //
      var accuracyLabel = '';
      if (_resultStatus == _ResultStatus.found) {
        accuracyLabel = 'Accuracy: ${(_accuracy * 100).toStringAsFixed(2)}%';
      }
      //check
      Navigator.push(
        context,
        PageTransition(
          child: ScanPage(
            plantID: getId(title) >= 0
                ? _plantList[getId(title)].plantId
                : getId(title),
            title: title,
            accuracyLabel: accuracyLabel,
            id: getId(title),
          ),
          type: PageTransitionType.bottomToTop,
        ),
      );
    });
  }

  Future<void> _loadClassifier() async {
    // debugPrint(
    //   'Start loading of Classifier with '
    //   'labels at $_labelsFileName, '
    //   'model at $_modelFileName',
    // );

    final classifier = await Classifier.loadWith(
      labelsFileName: _labelsFileName,
      modelFileName: _modelFileName,
    );
    _classifier = classifier!;
  }

  void _analyzeImage(File image1) {
    final imageInput = img.decodeImage(image1.readAsBytesSync())!;
    //Image f1 = Image(image: image1);
    final resultCategory = _classifier.predict(imageInput);

    final result = resultCategory.score >= 0.7
        ? _ResultStatus.found
        : _ResultStatus.notFound;
    final plantLabel = resultCategory.label;
    final accuracy = resultCategory.score;

    setState(() {
      _resultStatus = result;
      _plantLabel = plantLabel;
      _accuracy = accuracy;
    });
  }

  int getId(String title) {
    switch (title) {
      case "Tulsi":
        {
          return 0;
        }
        break;

      case "Mexican Mint":
        {
          return 1;
        }
        break;
      case "Neem":
        {
          return 2;
        }
        break;
      case "Mint":
        {
          return 3;
        }
        break;
      case "Hibiscius Flower":
        {
          return 4;
        }
        break;
      case "Curry Leaf":
        {
          return 5;
        }
        break;
      case "Betel":
        {
          return 6;
        }
        break;
      case "Brahmi":
        {
          return 7;
        }
        break;
      case "Leucas Aspera":
        {
          return 8;
        }
        break;

      default:
        {
          return -1;
        }
        break;
    }
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
              'animations/scan.json',
              reverse: true,
              repeat: _animstop,
              //fit: BoxFit.cover
            ),
          ),
          // Center(
          //   child: Container(
          //     width: 500,
          //     height: 500,
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage('assets/images/crop.png'),
          //         fit: BoxFit.contain,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
