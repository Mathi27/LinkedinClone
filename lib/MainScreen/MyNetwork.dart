import 'package:flutter/material.dart';

class networkingPage extends StatefulWidget {
  const networkingPage({super.key});

  @override
  State<networkingPage> createState() => _networkingPageState();
}

class _networkingPageState extends State<networkingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is My Network Page')),
    );
  }
}