import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:linkedinui/MainScreen/mainHomeScreen.dart';
import 'package:linkedinui/LoginScreen/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:linkedinui/ReusableWidgets/ReuseWidget.dart';

class JoinNow extends StatefulWidget {
  const JoinNow({super.key});

  @override
  State<JoinNow> createState() => _JoinNowState();
}

class _JoinNowState extends State<JoinNow> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 55, left: 10, right: 10),
        child: Column(
          children: [
            Container(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/LinkedinLogoTitle.png', height: 20)),
            const SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Join LinkedIn",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Row(
              children: [
                const Text(
                  "or",
                  style: TextStyle(color: Colors.black),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const signupui(),
                      ),
                    );
                  },
                  child: const Text(
                    "Sign in",
                    style: TextStyle(
                        color: Color.fromARGB(255, 21, 86, 139),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            )),
            const SizedBox(
              height: 15,
            ),
            reusableTextField("Mail", Icons.mail, false, _emailTextController),
            // TextFormField(
            //   decoration: InputDecoration(
            //     label: Text("Email"),
            //   ),
            // ),
            const SizedBox(
              height: 15,
            ),
            reusableTextField("Password", Icons.remove_red_eye_outlined, true,
                _passwordTextController),

            // TextFormField(
            //   decoration: InputDecoration(
            //     label: Text("Password"),
            //   ),
            // ),
            firebaseUIButton(context, "Continue", () {
              FirebaseAuth.instance
                  .createUserWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _emailTextController.text)
                  .then((value) {
                print("Created New Account");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => mainHomeScreenPage(),
                    ))
                  ..onError(
                      (error, stackTrace) => print("Error ${error.toString}"));
                ;
              });
            }),
            // const SizedBox(
            //   height: 15,
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     // Todo:
            //     // Navigator.of(context).push(
            //     //   MaterialPageRoute(builder: (context) => signupui()),
            //     // );
            //   },
            //   child: Text('Continue'),
            //   style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(16),
            //       ),
            //       minimumSize: Size.fromHeight(45),
            //       backgroundColor: Color.fromARGB(255, 11, 73, 124)),
            // ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "or",
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),

            OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign in with Google",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: Size.fromHeight(45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
