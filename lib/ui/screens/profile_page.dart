import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flore/constants.dart';
import 'package:flore/ui/LogIN.dart';
import 'package:flutter/material.dart';
import 'widgets/profile_widget.dart';
import 'package:firebase_core/firebase_core.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? _user;
  Map<String, dynamic>? _userData;

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

//1
  Future<void> _getUserData() async {
    try {
      final User? user = FirebaseAuth.instance.currentUser;
      //Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
      // return Text("Full Name: ${data['full_name']} ${data['last_name']}");
      if (user != null) {
        final DocumentSnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance
                .collection('users')
                .doc(user.uid)
                .get();
        _userData = snapshot.data();
        setState(() {
          _user = user;
          // _userData = data['displayName'];
        });
      }
    } catch (e) {
      print(e.toString());
      // handle the error here
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(_user?.email);
    print('hi');
    print(_userData);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 150,
                child: const CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.transparent,
                  backgroundImage: ExactAssetImage('assets/images/profile.jpg'),
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Constants.primaryColor.withOpacity(0.5),
                      width: 5.0,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: size.width * 0.3,
                child: Row(
                  children: [
                    Text(
                      _userData != null && _userData!.containsKey('displayName')
                          ? _userData!['displayName']
                          : 'loading...',
                      style: TextStyle(
                        color: Constants.blackColor,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 23.0,
                      child: Image.asset("assets/images/verified.png"),
                    ),
                  ],
                ),
              ),
              Text(
                _user?.email ?? '',
                style: TextStyle(
                  color: Constants.blackColor.withOpacity(0.3),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                height: size.height * 0.7,
                width: size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const ProfileWidget(
                      icon: Icons.person,
                      title: 'My Profile',
                    ),
                    const ProfileWidget(
                      icon: Icons.settings,
                      title: 'Settings',
                    ),
                    const ProfileWidget(
                      icon: Icons.notifications,
                      title: 'Notifications',
                    ),
                    const ProfileWidget(
                      icon: Icons.chat,
                      title: 'FAQs',
                    ),
                    const ProfileWidget(
                      icon: Icons.share,
                      title: 'Share',
                    ),
                    TextButton(
                      onPressed: () {
                        FirebaseAuth.instance.signOut().then((value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Logout successful.'),
                              duration: Duration(seconds: 3),
                            ),
                          );
                        });
                      },
                      child: const ProfileWidget(
                        icon: Icons.logout,
                        title: 'Log Out',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
