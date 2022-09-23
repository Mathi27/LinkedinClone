import 'package:flutter/material.dart';

class jobsPage extends StatefulWidget {
  const jobsPage({super.key});

  @override
  State<jobsPage> createState() => _jobsPageState();
}

class _jobsPageState extends State<jobsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('This is Job Page Ui')),
    );
  }
}