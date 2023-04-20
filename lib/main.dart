import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flore/models/local_strings.dart';
import 'package:flore/ui/onboarding_screen.dart';
import 'package:flore/ui/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var auth = FirebaseAuth.instance;
  var isLogin = false;

  checkIfLogin() async{
    auth.authStateChanges().listen((User? user) {
      if(user !=null && mounted){
        setState(() {
          isLogin = true;
        });
      }
    });
  }

  @override
  void initState() {
    checkIfLogin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocalString(),
      //locale: Locale('ka'),
      //locale: snapshot.data,
      locale: Get.deviceLocale,
      title: 'Onboarding Screen',
      home: isLogin ? RootPage() : OnboardingScreen(), // instantiate OnboardingScreen widget
      debugShowCheckedModeBanner: false,
    );
  }
}