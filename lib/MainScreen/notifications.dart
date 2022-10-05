import 'package:flutter/material.dart';

class notificationsPage extends StatefulWidget {
  const notificationsPage({super.key});

  @override
  State<notificationsPage> createState() => _notificationsPageState();
}

class _notificationsPageState extends State<notificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => throw Exception(),
          child: const Text("Throw Test Exception"),
        ),
      ),
    );
  }
}
