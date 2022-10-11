import 'package:flutter/material.dart';

class jobsPage extends StatefulWidget {
  const jobsPage({super.key});

  @override
  State<jobsPage> createState() => _jobsPageState();
}

class _jobsPageState extends State<jobsPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Icon(Icons.bookmark_border_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text("My jobs"),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Icon(Icons.post_add_sharp),
                  SizedBox(
                    width: 5,
                  ),
                  Text("Post a job"),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 10,
                color: Color.fromARGB(255, 230, 230, 230),
              ),
              Card(
                color: Colors.white,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recommended for you",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/uplersLogo.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Remote Android Developer",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Uplers"),
                              SizedBox(
                                height: 2,
                              ),
                              Text("Hyderabad,Telangana,India (Remote)"),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Icon(Icons.bookmark_outline_outlined),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/Mutual_Mobile_Logo.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Intern/ Associate Engineer",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text("Mutual Mobile"),
                              Text("TamilNadu,Chennai"),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          Icon(Icons.bookmark_outline_outlined),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            child: Image.asset('assets/marknow.jpeg'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "MERN Stac Developer Intern",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text("Markoknow"),
                              Text("TamilNadu,Chennai"),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Icon(Icons.bookmark_outline_outlined),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 2,
          color: Color.fromARGB(255, 202, 202, 202),
        ),
        Container(
          child: TextButton(
            child: Text("Show all"),
            onPressed: () {},
          ),
        ),
        Container(
          height: 8,
          color: Color.fromARGB(255, 230, 230, 230),
        ),
        Container(
          height: 4,
          color: Color.fromARGB(255, 223, 167, 0),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, bottom: 10),
          child: Row(
            children: [
              Image.asset(
                'assets/Linkedin+premium.png',
                height: 20,
                width: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "P R E M I U M",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "Jobs where you're a top applicant",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Image.asset(
                'assets/divinemz.png',
                height: 50,
                width: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Development Intern",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Divine Myndz"),
                  SizedBox(
                    height: 2,
                  ),
                  Text("Chennai,TamilNadu,India(Hybrid)"),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      Text("3 weeks ago"),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/linkedinIcon.png',
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(Icons.circle),
                      Text("Easy Apply"),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SizedBox(
                width: 70,
              ),
              Icon(Icons.bookmark_border_outlined),
            ],
          ),
        ),
      ],
    );
  }
}

Widget JobCardWidget() {
  return Card();
}
