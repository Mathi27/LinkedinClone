import 'package:flutter/material.dart';

class DataPrivacySettings extends StatefulWidget {
  const DataPrivacySettings({super.key});

  @override
  State<DataPrivacySettings> createState() => _DataPrivacySettingsState();
}

class _DataPrivacySettingsState extends State<DataPrivacySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Data Privacy Page"),
      ),
    );
  }
}
