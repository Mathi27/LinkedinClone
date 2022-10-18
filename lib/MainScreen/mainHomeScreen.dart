import 'package:flutter/material.dart';
import 'package:linkedinui/MainScreen/MyNetwork.dart';
import 'package:linkedinui/MainScreen/newpost.dart';
import 'package:linkedinui/MainScreen/notifications.dart';
import 'package:linkedinui/MainScreen/jobs.dart';
import 'package:linkedinui/MainScreen/Home.dart';
import 'package:linkedinui/searchPage.dart';
import 'package:linkedinui/MainScreen/NavigationDrawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:linkedinui/Chats/ChatUI.dart';

class mainHomeScreenPage extends StatefulWidget {
  const mainHomeScreenPage({super.key});
  @override
  State<mainHomeScreenPage> createState() => _homeState();
}

class _homeState extends State<mainHomeScreenPage> {
  int selectIndex = 0;
  void _NavBarNavigate(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  //to navigate to different page.
  final List<Widget> _children = [
    HomeScreenPage(),
    networkingPage(),
    newPostPage(),
    notificationsPage(),
    jobsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 219, 219, 219),
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Card(
              semanticContainer: true,
              child: Image.network(
                '${FirebaseAuth.instance.currentUser!.photoURL}',
                width: 35,
                fit: BoxFit.fill,
              ),
              shape: CircleBorder(),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 4,
              margin: EdgeInsets.all(10),
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    )),
                child: InkWell(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SearchPage())),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 160, 5),
                    child: Row(children: [
                      Icon(Icons.search, color: Color.fromARGB(255, 0, 0, 0)),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Search"),
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: InkWell(
                onTap: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => chatUi())),
                child: Row(children: [
                  Icon(
                    Icons.message,
                    size: 30,
                    color: Colors.black,
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
      body: _children[selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          currentIndex: selectIndex,
          onTap: _NavBarNavigate,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: 'My Network'),
            BottomNavigationBarItem(icon: Icon(Icons.post_add), label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notifications'),
            BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Jobs'),
          ]),
      drawer: sideDrawer(),
    );
  }
}
