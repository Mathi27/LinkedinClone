import 'package:flutter/material.dart';
import 'package:linkedinui/NotificationHelper.dart';

List<NotificationHelper> notify = [
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
  NotificationHelper(
    ProfileImage: 'assets/mydp.jpeg',
    NotificationTitle:
        "Mathi Yuvarajan shared a post: Ethereal 2k22! 25 sizzling cometitions to mark 25 years.",
    Timer: "2h",
  ),
];

class notificationsPage extends StatefulWidget {
  const notificationsPage({super.key});

  @override
  State<notificationsPage> createState() => _notificationsPageState();
}

class _notificationsPageState extends State<notificationsPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return ListView(
      children: [
        ...notify.map(
          (e) => NotificationCard(h, w, context, e),
        ),
      ],
    );
  }
}

Widget NotificationCard(
    double h, double w, BuildContext? context, NotificationHelper e) {
  return Card(
    color: Color.fromARGB(255, 255, 255, 255),
    child: Container(
      height: h * 0.10,
      child: Row(
        children: [
          Container(
            height: h * 0.08,
            padding: EdgeInsets.only(left: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(e.ProfileImage.toString()),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: h * 0.08,
                width: w * 0.60,
                padding: EdgeInsets.only(top: 15),
                child: Container(child: Text(e.NotificationTitle.toString())),
              ),
            ],
          ),
          SizedBox(
            width: 1,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 9,
            ),
            child: Column(
              children: [
                Text(e.Timer.toString()),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) => [],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
