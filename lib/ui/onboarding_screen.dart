

import 'package:flore/ui/SignUP.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

//import 'SignUpScreennn.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0,viewportFraction: 1, keepPage: true,);
  int _currentPage = 0;

  void _nextPage() {
    _controller.nextPage(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
              PageStorageBucket().writeState(context, _currentPage, identifier: 'currentPage');
            },
            children: [
              _buildPage(
                'Find Medicinal Plants',
                'You can search plants by local names, scientific names, English names.',
                'assets/images/Hemalomena.jpeg',
              ),
              _buildPage(
                'Find Medicinal Plants by Scanning ',
                'Are you a plant lover? Connect with other plant lovers',
                'assets/images/Lấy=Follow _33.jpeg',
              ),
              _buildPage(
                'Plant a Tree, Green the Earth',
                'You can search plants by local names, scientific names, English names.',
                'assets/images/download (1).jpeg',
              ),
            ],
          ),
          Positioned(
            bottom: 88.0,
            left: 0,
            right: 210,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                    (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.white
                        : Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 72.0,
            right: 24.0,
            child: GestureDetector(
              onTap: () {
                if (_currentPage == 2) {
                  Navigator.push(context, PageTransition(child: SignUpScreenn(), type: PageTransitionType.bottomToTop,duration: Duration(milliseconds: 500),));
                } else {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(
                  _currentPage == 2 ? 'Sign Up' : 'Next',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String title, String description, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height *0.25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              description,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}