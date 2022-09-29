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
              Container(
                padding: EdgeInsets.only(left: 15, right: 10, top: 10),
                child: Row(
                  children: [
                    const Text(
                      "Manage my network",
                      style: TextStyle(
                          color: Color.fromARGB(255, 9, 79, 136), fontSize: 20),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 35,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    const Text(
                      "Invitations",
                      style: TextStyle(
                          color: Color.fromARGB(255, 9, 79, 136), fontSize: 20),
                    ),
                    SizedBox(
                      width: 240,
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 35,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "People who follow Raj Vikramaditiya also follow",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
