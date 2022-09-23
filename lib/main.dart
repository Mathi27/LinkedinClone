import 'package:flutter/material.dart';
import 'package:linkedinui/LoginScreen/loginscreen.dart';
import 'package:linkedinui/SplashScreen/splashscreenui.dart';
import 'package:linkedinui/LoginScreen/joinNow.dart';
import 'package:linkedinui/MainScreen/mainHomeScreen.dart';
import 'package:linkedinui/MainScreen/MyNetwork.dart';
import 'package:linkedinui/MainScreen/newpost.dart';
import 'package:linkedinui/MainScreen/notifications.dart';
import 'package:linkedinui/MainScreen/jobs.dart';


void main() {
   runApp(LinkedIn());
}
 
class LinkedIn extends StatefulWidget {
  const LinkedIn({super.key});

  @override
  State<LinkedIn> createState() => _LinkedInState();
}

class _LinkedInState extends State<LinkedIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}