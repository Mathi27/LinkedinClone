import 'package:flutter/material.dart';
import './SearchPageHelper/searchList.dart';

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
            SizedBox(
              width: 10,
            ),
            Text(
              "Search",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            SizedBox(
              width: 250,
            ),
            Icon(Icons.qr_code),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 18,
            ),
            Text(
              "Today's news and views",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Expanded(
          child: ListView(
            // scrollDirection: Axis.v,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: [
              NewsContainer(),
              NewsContainer(),
              NewsContainer(),
              NewsContainer(),
              NewsContainer(),
              NewsContainer(),
              NewsContainer(),
              NewsContainer(),
            ],
          ),
        )
      ]),
    );
  }
}

Widget NewsContainer() {
  return Container(
    width: double.infinity,
    height: 100,
    color: Color.fromARGB(255, 238, 238, 238),
    child: Container(
      child: Card(
        elevation: 5,
        child: Column(
          children: [
            SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 1),
                    height: 85,
                    width: 300,
                    child: Column(
                      children: [
                        Text(
                          "Here are 2022 Top Startups in India",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                            "Number of startup unicorns in India is 107 ,Total number of unicorns by Top 5 IITs are 80")
                      ],
                    )),
                SizedBox(
                  width: 5,
                ),
                Image.network(
                  "https://i0.wp.com/www.inventiva.co.in/wp-content/uploads/2022/06/BgWmTW6J-startup-company-1.jpg",
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
