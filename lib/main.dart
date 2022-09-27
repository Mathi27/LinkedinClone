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
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

AndroidNotificationChannel channel = AndroidNotificationChannel(
  "LinkedIn",
  "LinkedIn title",
  importance: Importance.high,
  playSound: true,
);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
    
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async{
  await Firebase.initializeApp();
  print("A big Message just showed up: ${message.messageId}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  
  await flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.createNotificationChannel(channel);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );

  runApp(LinkedIn());
}

class LinkedIn extends StatefulWidget {
  const LinkedIn({super.key});

  @override
  State<LinkedIn> createState() => _LinkedInState();
}

class _LinkedInState extends State<LinkedIn> {
  @override
  void initState(){
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) { 
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if(notification!=null && android!=null){
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              // channel.description,
              color: Colors.blue,
              playSound: true,
              icon: '@mipmap/ic_launcher'
            ),
          ),
        );
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("A new on message opned event was published");
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if(notification != kNoDefaultValue && android!=null){
        showDialog(context: context, builder: (_){
           return AlertDialog(
            title: Text(notification.title),
            content: SingleChildScrollView(child: ),
           );
        });
      }

     });
  }
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        ),
      );
}
