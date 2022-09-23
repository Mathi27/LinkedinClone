import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:linkedinui/LoginScreen/loginscreen.dart';
 
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
 
class _SplashScreenState extends State<SplashScreen> {
@override
void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>signupui()),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_yNYxCH.json')),
    );
  }
}