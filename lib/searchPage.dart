import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            Icon(
              Icons.chevron_left,
              size: 40,
            ),
            Text(
              "Search",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              width: 250,
            ),
            Icon(Icons.qr_code),
          ],
        )
      ]),
    );
  }
}
