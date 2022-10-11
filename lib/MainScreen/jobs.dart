import 'package:flutter/material.dart';

class jobsPage extends StatefulWidget {
  const jobsPage({super.key});

  @override
  State<jobsPage> createState() => _jobsPageState();
}

class _jobsPageState extends State<jobsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildBackgroundCard(),
        SizedBox(
          height: 10,
        ),
        buildIconCard(),
        SizedBox(
          height: 10,
        ),
        BuildBurger(),
      ],
    );
  }
}

Widget buildBackgroundCard() {
  final UrlBackgroundImage =
      'https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80';
  return Container(
    // width: double.infinity,
    height: 200,
    padding: EdgeInsets.all(24),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.25), BlendMode.darken),
          image: NetworkImage(UrlBackgroundImage),
          fit: BoxFit.cover,
        )),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Codingmart Technologies",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          'Product Engineer',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget buildIconCard() {
  return Card(
    color: Color(0xFF40358a),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Container(
      width: 160,
      height: 160,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.access_time,
            color: Color(0xFF00dcff),
            size: 48,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Active",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "2 Times a week",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget BuildBurger() {
  return Container(
    color: Color(0xFF010101),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Test Card',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        Text(
          "Test one",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        Text(
          "Test two",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
        )
      ],
    ),
  );
}
