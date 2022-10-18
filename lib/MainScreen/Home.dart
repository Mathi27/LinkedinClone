import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';
import 'package:linkedinui/MainScreen/PostHelper.dart';
import 'package:readmore/readmore.dart';
import 'package:text_divider/text_divider.dart';

List<PostHelper> posthelp = [
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "Mathi Yuvarajan",
    Designation: "Product Engineer",
    Time: "1d",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#lorem #ipsum #programmer #developer",
    Post: "assets/postdev.jpg",
  ),
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "Akash",
    Designation: "React Native Developer",
    Time: "1d",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#developer #programming #dsa #coding",
    Post: "assets/postdev.jpg",
  ),
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "Fifi",
    Designation: "ReactNative Developer",
    Time: "12d",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#developer #programming #dsa #coding",
    Post: "assets/postdev.jpg",
  ),
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "Ganesh",
    Designation: "Devops Engineer",
    Time: "3d",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#developer #programming #dsa #config #devops",
    Post: "assets/postdev.jpg",
  ),
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "Nandhakumar",
    Designation: "Flutter Developer",
    Time: "1d",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#developer #programming #dsa #coding",
    Post: "assets/postdev.jpg",
  ),
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "Harini",
    Designation: "React Developer",
    Time: "1d",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#developer #programming #dsa #coding",
    Post: "assets/postdev.jpg",
  ),
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "pravin",
    Designation: "React Developer",
    Time: "16hrs",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#developer #programming #dsa #coding",
    Post: "assets/postdev.jpg",
  ),
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "Kushma Ramesh",
    Designation: "Java Developer",
    Time: "2d",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#developer #programming #dsa #coding",
    Post: "assets/postdev.jpg",
  ),
  PostHelper(
    ProfilePhoto: "assets/profiledp.jpg",
    Name: "Nandhakumar",
    Designation: "Product Designer",
    Time: "10d",
    PostDescription:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In posuere odio ut viverra ultrices. Sed consectetur ultricies magna in sagittis. Quisque mattis consectetur elit ac suscipit. Duis consectetur accumsan viverra. Suspendisse vulputate blandit magna in elementum. Maecenas condimentum maximus elementum. Phasellus eu lobortis ex.",
    HastagsUsed: "#Designer #productDesigner #codingmart",
    Post: "assets/postdev.jpg",
  ),
];

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          // PostContainerTwo(),
          SizedBox(
            height: 5,
          ),
          ...posthelp.map((e) => PostContainerOne(e)),
        ],
      ),
    );
  }
}

// This Widget contains employee with post alone.
Widget PostContainerOne(PostHelper postHelper) {
  return Container(
    color: Colors.white,
    height: 650,
    width: double.infinity,
    child: Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  postHelper.ProfilePhoto.toString(),
                  height: 60,
                  width: 60,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 15),
              height: 70,
              width: 210,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postHelper.Name.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(postHelper.Designation.toString()),
                    Row(
                      children: [
                        Text(postHelper.Time.toString()),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.circle_rounded,
                          size: 5,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(
                          Icons.travel_explore,
                          size: 20,
                        ),
                      ],
                    )
                  ]),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              color: Colors.white,
              height: 60,
              width: 80,
              child: Row(children: [
                Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 14, 84, 141),
                ),
                Text(
                  "Follow",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 14, 84, 141)),
                )
              ]),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          height: 530,
          width: double.infinity,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ReadMoreText(
              postHelper.PostDescription.toString(),
              colorClickableText: Colors.blue,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 16, 81, 134)),
              lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 16, 81, 134)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              postHelper.HastagsUsed.toString(),
              style: TextStyle(
                  color: Color.fromARGB(255, 16, 81, 134),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              postHelper.Post.toString(),
              width: double.infinity,
            ),
            SizedBox(
              height: 8,
            ),
            // Todo: Need to add reaction button animation and update the state.
            Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/reactionsLogo.png",
                    height: 22,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text("150"),
                  SizedBox(
                    width: 130,
                  ),
                  Text("80 Comments"),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.circle,
                    size: 5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text("6 shares"),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              color: Colors.black45,
              thickness: 1,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Color.fromARGB(255, 13, 68, 94),
                    ),
                    Icon(Icons.comment),
                    Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                    Icon(Icons.send),
                  ]),
            )
          ]),
        ),
      ],
    ),
  );
}
