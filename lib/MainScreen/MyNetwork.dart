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
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text("Manage my network"),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(Icons.chevron_right),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text("Invitations"),
                  SizedBox(
                    width: 110,
                  ),
                  Icon(Icons.chevron_right),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
