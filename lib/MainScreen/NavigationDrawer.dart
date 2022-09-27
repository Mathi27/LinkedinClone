import 'package:flutter/material.dart';

class sideDrawer extends StatefulWidget {
  const sideDrawer({super.key});

  @override
  State<sideDrawer> createState() => _sideDrawerState();
}

class _sideDrawerState extends State<sideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Mathi Yuvarajan T.K',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
            ),
            accountEmail: Text(
              'View profile',
              style: TextStyle(color: Colors.grey[800]),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://media-exp1.licdn.com/dms/image/C4D03AQE3A26E28TqRw/profile-displayphoto-shrink_800_800/0/1653070721454?e=2147483647&v=beta&t=Um1dp3qvLA6x13K8YGdMNATY9t7WqrcnFDDDNxVP6I4',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Groups",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Events",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 400,
                ),
                Row(
                  children: [
                    Image.network(
                      'https://tandsgo.com/wp-content/uploads/2014/06/LinkedIn-Premium-Badge1-190x190.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Access My Premium",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 245, 82, 70)),
                  onPressed: () {},
                  child: Text('Logout'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
