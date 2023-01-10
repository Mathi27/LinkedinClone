import 'package:flutter/material.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkedinui/LoginScreen/joinNow.dart';
import 'package:linkedinui/Provider/google_sign_In.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:linkedinui/ReusableWidgets/ReuseWidget.dart';
import 'package:linkedinui/MainScreen/mainHomeScreen.dart';
import 'package:linkedinui/LoginScreen/resetPassword.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class signupui extends StatefulWidget {
  const signupui({super.key});

  @override
  State<signupui> createState() => _signupuiState();
}

class _signupuiState extends State<signupui> {
  bool isSecureMode = false;
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  bool onTap = false;
  @override
  Widget build(BuildContext context) {
    FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
    //  await FlutterWindowManager.addFlags(FlutterWindowManager().FLAG_ )
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 35, left: 10, right: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/LinkedinLogoTitle.png', height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => JoinNow()));
                    },
                    child: Text(
                      'Join now',
                      style: TextStyle(color: Color.fromARGB(255, 5, 79, 139)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 10,
            ),
            reusableTextField("Mail", Icons.mail, false, _emailTextController),

            // TextFormField(
            //   decoration: InputDecoration(
            //     label: Text('Email or Phone'),
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            // TextFormField(
            //   obscureText: true,
            //   decoration: InputDecoration(
            //       label: Text('Password'),
            //       suffixIcon: InkWell(
            //         onTap: () {},
            //         child: Icon(Icons.visibility),
            //       )),
            // ),
            reusableTextField("Password", Icons.remove_red_eye_outlined, true,
                _passwordTextController),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Checkbox(
                      value: onTap,
                      activeColor: Colors.green,
                      onChanged: (context) {
                        setState(() {
                          onTap = !onTap;
                        });
                      }),
                  Text(
                    "Remember me.",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () async {
                      final Uri _url = Uri.parse(
                          'https://www.linkedin.com/help/linkedin/answer/117070');
                      if (!await launchUrl(_url)) {
                        await launchUrl(_url);
                      }
                    },
                    child: Text(
                      "Learn more",
                      style: TextStyle(
                          color: Color.fromARGB(255, 5, 84, 150),
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Resetpassword(),
                          ));
                    },
                    child: Text("Forgot Password ?"))),
            SizedBox(
              height: 15,
            ),
            firebaseUIButton(context, "Sign In", () {
              FirebaseAuth.instance
                  .signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                  .then(
                    (value) => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => mainHomeScreenPage())),
                  )
                  .onError((error, stackTrace) {
                const ErrorMessageSnak = SnackBar(
                  backgroundColor: Colors.redAccent,
                  content: Text('Password is Incorrect!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(ErrorMessageSnak);
              });
            }),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.of(context).pushReplacement(
            //         MaterialPageRoute(builder: (context) => JoinNow()),
            //       );
            //     },
            //     child: Text('Sign In'),
            //     style: ElevatedButton.styleFrom(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(16),
            //         ),
            //         minimumSize: Size.fromHeight(45),
            //         backgroundColor: Color.fromARGB(255, 11, 73, 124))),
            SizedBox(
              height: 10,
            ),
            Text("or"),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.GoogleLogin();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Signing in...."),
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.redAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
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
            SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.apple,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign in with Apple",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size.fromHeight(45),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
