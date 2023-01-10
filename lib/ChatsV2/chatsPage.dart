import 'package:flutter/material.dart';
// import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:linkedinui/MainScreen/mainHomeScreen.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Messaging",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.black,
              ))
        ],
        shadowColor: Colors.black,
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => mainHomeScreenPage(),
            ));
          },
          color: Colors.black,
        ),
      ),
      body: Container(
        height: 100,
        width: double.infinity,
        color: Color.fromARGB(255, 251, 255, 0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Module Rework",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {},
                child: const Text(
                  "Check Now",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
