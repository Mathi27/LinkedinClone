import 'package:flutter/material.dart';

class SignInSettings extends StatefulWidget {
  const SignInSettings({super.key});

  @override
  State<SignInSettings> createState() => _SignInSettingsState();
}

class _SignInSettingsState extends State<SignInSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Sign in and Security"),
      ),
    );
  }
}
