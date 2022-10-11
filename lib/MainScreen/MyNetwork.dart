import 'package:flutter/material.dart';
import 'package:linkedinui/MyNetworkActivity/recommended.dart';
import 'package:linkedinui/MyNetworkActivity/trending.dart';
import 'package:linkedinui/MyNetworkActivity/trendingHashtags.dart';

List<recommended> network = [
  recommended(
    Name: 'Paras Saini',
    Description: 'SDE @ Microsoft | NIT Allahabad ',
    about: 'Talks about #coding , #youtuber , #programminbg',
  ),
  recommended(
    Name: 'Ritika Singh',
    Description: 'Talent Acquisition Specialist at Genpact',
    about: 'Talks about #product , #marketing',
  ),
];

List<trendingPages> pages = [
  trendingPages(
    title: 'Get Hired with GeeksforGeeks',
    followers: '178,652 followers',
  ),
  trendingPages(
    title: 'Capgemini',
    followers: '4965962 followers',
  ),
  trendingPages(
    title: 'CodeChef',
    followers: '437,064 followers',
  ),
  trendingPages(
    title: 'Tech Mahindra',
    followers: '3,744,475 followers',
  ),
];

List<HastagTrending> HastagTrend = [
  HastagTrending(
    PageName: "#hiring",
    Followers: "2,973,106 followers",
  ),
  HastagTrending(
    PageName: "#recruitment",
    Followers: "2,646,167 followers",
  ),
  HastagTrending(
    PageName: "#personalbranding",
    Followers: "10,421,793 followers",
  ),
  HastagTrending(
    PageName: "#personalbranding",
    Followers: "10,421,793 followers",
  ),
  HastagTrending(
    PageName: "#personalbranding",
    Followers: "10,421,793 followers",
  ),
  HastagTrending(
    PageName: "#personalbranding",
    Followers: "10,421,793 followers",
  ),
  HastagTrending(
    PageName: "#personalbranding",
    Followers: "10,421,793 followers",
  ),
  HastagTrending(
    PageName: "#personalbranding",
    Followers: "10,421,793 followers",
  ),
  HastagTrending(
    PageName: "#personalbranding",
    Followers: "10,421,793 followers",
  ),
];

class networkingPage extends StatefulWidget {
  const networkingPage({super.key});

  @override
  State<networkingPage> createState() => _networkingPageState();
}

class _networkingPageState extends State<networkingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: double.infinity,
          height: 80,
          child: Card(
            // elevation: 5,
            child: Row(
              children: [
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Manage my Network",
                  style: TextStyle(
                      color: Color.fromARGB(255, 8, 75, 129),
                      fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                Spacer(),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 50,
          child: Card(
            // elevation: 5,
            child: Row(children: [
              SizedBox(
                width: 8,
              ),
              Text(
                "Invitations",
                style: TextStyle(
                    color: Color.fromARGB(255, 8, 75, 129),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              Spacer(),
              Icon(Icons.chevron_right),
            ]),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Trending hastags in your network ",
              style: TextStyle(
                  color: Color.fromARGB(255, 3, 56, 100),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ...HastagTrend.map((value) => MyWidget(ht: value)),
        Container(
          width: 50,
          child: TextButton(
              onPressed: () {},
              child: Text("See all",
                  style: TextStyle(
                      color: Color.fromARGB(255, 3, 56, 100),
                      fontWeight: FontWeight.w500,
                      fontSize: 16))),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Text(
              "Recommended for you",
              style: TextStyle(
                  color: Color.fromARGB(255, 3, 56, 100),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        )
      ],
    );
  }
}

class recomendedWidget extends StatelessWidget {
  const recomendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(),
    );
  }
}

class MyWidget extends StatelessWidget {
  HastagTrending? ht;
  MyWidget({this.ht});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Row(children: [
          Image(
            height: 50,
            width: 50,
            image: AssetImage('assets/hastags.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ht!.PageName.toString()),
                SizedBox(
                  height: 5,
                ),
                Text(ht!.Followers.toString()),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 25,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      backgroundColor: Color.fromARGB(255, 3, 56, 100),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          "Follow",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
