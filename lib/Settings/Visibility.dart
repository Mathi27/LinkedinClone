import 'package:flutter/material.dart';

class VisibilitySettings extends StatefulWidget {
  const VisibilitySettings({super.key});

  @override
  State<VisibilitySettings> createState() => _VisibilitySettingsState();
}

class _VisibilitySettingsState extends State<VisibilitySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Visibility Page "),
      ),
    );
  }
}
