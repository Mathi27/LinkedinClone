import 'package:flutter/material.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // End of one
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // End of post 2
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // end of 3
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // end of 4
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // end of 5
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // end of 6
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // end
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // end
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // end
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
          // end
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10,
                    height: 60,
                  ),
                  //profile photo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/mydp.jpeg",
                          ),
                          fit: BoxFit.fill),
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mathi Yuvarajan",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Product Engineer at Codingmart Technologies",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "54m ago",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "+ Follow",
                    style: TextStyle(
                        color: Color.fromARGB(255, 9, 64, 92),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                child: Column(children: [
                  Text(
                      "The Flutter 3 release supports foldable mobile devices. In a collaboration spearheaded by Microsoft, new features and widgets allow you to create dynamic and delightful experiences on foldable devices."),
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("assets/flutter-3.png"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.thumb_up_alt_outlined,
                          color: Color.fromARGB(255, 6, 42, 105)),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.comment),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.share),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(Icons.send),
                    ],
                  )
                ]),
                height: 380,
                width: 380,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
