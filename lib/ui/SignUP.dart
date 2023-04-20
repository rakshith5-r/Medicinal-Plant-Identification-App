import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flore/ui/LogIN.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import 'root_page.dart';


class SignUpScreenn extends StatefulWidget {
  @override
  _SignUpScreennState createState() => _SignUpScreennState();
}

class _SignUpScreennState extends State<SignUpScreenn> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _displayNameTextController = TextEditingController();
  bool _showPassword = false;
  bool _acceptTerms = false;

  @override
  void dispose(){
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _displayNameTextController.dispose();
    super.dispose();
  }

  Future singUp() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailTextController.text,
      password: _passwordTextController.text,
    ).then((value) {
      Navigator.push(
        context,
        PageTransition(
          child: const RootPage(),
          type: PageTransitionType.bottomToTop,
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Sign up successful.Welcome, ${_displayNameTextController.text}!'),
          duration: Duration(seconds: 3),
        ),
      );
    }).catchError((error) {
      String errorMessage;
      if (error.code == 'email-already-in-use') {
        errorMessage = 'Account already exists.';
      } else if (error.code == 'invalid-email') {
        errorMessage = 'Invalid email address.';
      } else if (error.code == 'weak-password') {
        errorMessage = 'Password is too weak.';
      } else {
        errorMessage = 'An error occurred. Please try again later.';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          duration: Duration(seconds: 3),
        ),
      );
    },
    );
// add users details
    addUserDetails(
      _displayNameTextController.text.trim(),
      _emailTextController.text.trim(),
    );
  }

  Future addUserDetails(
      String displayName, String email) async{
    await FirebaseFirestore.instance.collection('users').add({
      'displayName':displayName,
      'email':email,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/download (1).jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black.withOpacity(1)],
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Text(
              'Welcome',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10),
          Positioned(
            top: 170,
            left: 50,
            right: 50,
            child: Text(
              'You are one step away from joining a fantastic community.',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
// White curved rectangular box
          Positioned(
            top: MediaQuery.of(context).size.height * 0.35,
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * 0,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),

                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 50.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Neumorphic(
                      style: NeumorphicStyle(
                        color:Color.fromRGBO(150,190,93,200) ,
                        depth: -1.5,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12),
                        ),
                      ),
                      child: TextField(
                        controller: _displayNameTextController,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(75, 117, 89, 9),
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.person,color: Color.fromRGBO(75, 117, 89, 9),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Neumorphic(
                      style: NeumorphicStyle(
                        color:Color.fromRGBO(150,190,93,200) ,
                        depth: -1.5,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12),
                        ),
                      ),
                      child: TextField(
                        controller: _emailTextController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(75, 117, 89, 9),
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.email,color: Color.fromRGBO(75, 117, 89, 9),),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Neumorphic(
                      style: NeumorphicStyle(
                        color:Color.fromRGBO(150,190,93,200) ,
                        depth: -1.5,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12),
                        ),
                      ),
                      child: TextField(
                        controller: _passwordTextController,
                        obscureText: !_showPassword,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(75, 117, 89, 9),
                            fontSize: 18,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.lock,color: Color.fromRGBO(75, 117, 89, 9),),
                          suffix: GestureDetector(
                            onTap: (){
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                            child: Icon(
                              _showPassword ? Icons.visibility_off :Icons.visibility,
                              color: Color.fromRGBO(75, 117, 89, 9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color.fromRGBO(75, 117, 89, 9), // changes the border color
                          checkColor: Colors.white, // changes the tick color
                          hoverColor: Colors.blue, // changes the inside shade color
                          value: _acceptTerms,
                          onChanged: (value) {
                            setState(() {
                              _acceptTerms = value!;
                            });
                          },
                        ),
                        Text(
                          'Accept Terms and Conditions',
                          style: TextStyle(
                            color: Color.fromRGBO(75, 117, 89, 9),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height:10),
                    NeumorphicButton(
                      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 1),
                      onPressed: _acceptTerms ? singUp : null,
                      style: NeumorphicStyle(
                        depth: 10,
                        intensity: 0.7,
                        color: Color.fromRGBO(75, 117, 89, 9),
                        shape: NeumorphicShape.convex,
                        boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(50),
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),


                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.9,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));// Add your sign-in logic here
                          },
                          child: Text(
                            'Already have an account? Sign In',
                            style: TextStyle(
                              color: Color.fromRGBO(75, 117, 89, 9),
                              fontWeight: FontWeight.normal,
                              fontSize: 10,
                            ),
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
    );
  }
}
