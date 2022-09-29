import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:linkedinui/MainScreen/mainHomeScreen.dart';
import 'package:linkedinui/LoginScreen/joinNow.dart';
import 'package:linkedinui/MainScreen/Home.dart';

import '../LoginScreen/loginscreen.dart';

class Homepg extends StatelessWidget {
  const Homepg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Something went Wrong !'),
            );
          } else if (snapshot.hasData) {
            return mainHomeScreenPage();
          } else {
            return signupui();
          }
        },
      ),
    );
  }
}
