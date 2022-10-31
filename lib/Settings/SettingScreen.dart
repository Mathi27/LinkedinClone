import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import '../Provider/google_sign_In.dart';
import '../Settings/AccountPreferences.dart';
import '../Settings/SigninSecurity.dart';
import '../Settings/Visibility.dart';
import '../Settings/Communications.dart';
import '../Settings/DataPrivacy.dart';
import '../Settings/Advertisingdata.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.help,
              color: Colors.black87,
              size: 35,
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black87,
            size: 40,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        // padding: EdgeInsets.only(left: 10, top: 50),
        child: Container(
          padding: EdgeInsets.only(top: 20, left: 30),
          child: ListView(
            children: [
              Row(
                children: [
                  ClipRRect(
                    child: Image.network(
                      '${FirebaseAuth.instance.currentUser!.photoURL}',
                      width: 30,
                      height: 30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(fontSize: 38, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountPrefs()),
                      );
                    },
                    child: Text("Account Preferences",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInSettings()),
                      );
                    },
                    child: Text("Sign in & security",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.visibility),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VisibilitySettings()),
                      );
                    },
                    child: Text("Visibility",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.mail),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const CommunicationSettings()),
                      );
                    },
                    child: Text("Communications",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.shield),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DataPrivacySettings()),
                      );
                    },
                    child: Text("Data Privacy",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.newspaper),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const AdvertisingdataSettings()),
                      );
                    },
                    child: Text("Advertising data",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18)),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 30),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Help Center",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 78, 78, 78),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 78, 78, 78),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Accessibility",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 78, 78, 78),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "User Agreement",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 78, 78, 78),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "End User License Agreement",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 78, 78, 78),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Sign Out",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 78, 78, 78),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "VERSION: 4.1.726",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 78, 78, 78),
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
