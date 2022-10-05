import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedinui/LoginScreen/loginscreen.dart';
import 'package:linkedinui/Provider/google_sign_In.dart';
import 'package:linkedinui/SplashScreen/splashscreenui.dart';
import 'package:linkedinui/LoginScreen/joinNow.dart';
import 'package:linkedinui/MainScreen/mainHomeScreen.dart';
import 'package:linkedinui/MainScreen/MyNetwork.dart';
import 'package:linkedinui/MainScreen/newpost.dart';
import 'package:linkedinui/MainScreen/notifications.dart';
import 'package:linkedinui/MainScreen/jobs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

Future<void> _firebaseMessagingBackgroundHandler(message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}

void main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    // The following lines are the same as previously explained in "Handling uncaught errors"
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    runApp(LinkedIn());
  },
      (error, stack) =>
          FirebaseCrashlytics.instance.recordError(error, stack, fatal: true));
  ;
}

class LinkedIn extends StatefulWidget {
  const LinkedIn({super.key});

  @override
  State<LinkedIn> createState() => _LinkedInState();
}

class _LinkedInState extends State<LinkedIn> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      );
}
