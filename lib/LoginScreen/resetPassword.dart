import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:linkedinui/ReusableWidgets/ReuseWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:linkedinui/LoginScreen/loginscreen.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
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
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                )),
            Container(
              child: Row(
                children: [
                  const Text(
                    "or",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => signupui(),
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
              ),
            ),

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

            // firebaseUIButton(context, "Reset Password", () {}),

            firebaseUIButton(context, "Reset Password", () {
              FirebaseAuth.instance
                  .sendPasswordResetEmail(email: _emailTextController.text)
                  .then((value) => {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Color.fromARGB(255, 3, 83, 107),
                            content: Text(
                              'Reset Link sent!, Check your Mail',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      });
            }),
          ],
        ),
      ),
    );
  }
}
