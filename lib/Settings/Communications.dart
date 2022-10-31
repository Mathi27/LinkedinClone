import 'package:flutter/material.dart';

class CommunicationSettings extends StatefulWidget {
  const CommunicationSettings({super.key});

  @override
  State<CommunicationSettings> createState() => _CommunicationSettingsState();
}

class _CommunicationSettingsState extends State<CommunicationSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Communications Page")),
    );
  }
}
