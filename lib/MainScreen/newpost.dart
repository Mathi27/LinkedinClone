import 'package:flutter/material.dart';

class newPostPage extends StatefulWidget {
  const newPostPage({super.key});

  @override
  State<newPostPage> createState() => _newPostPageState();
}

class _newPostPageState extends State<newPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
        child: Text('Post Here'),
        onPressed: () => {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: 400,
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add_a_photo_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Add a photo"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.video_call),
                            Text("Take a video"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.image_aspect_ratio),
                            Text("Use a Template"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.celebration),
                            Text("Celebrate an occation"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.my_library_add_sharp),
                            Text("Add a document"),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.work),
                            Text("Share that you're hiring"),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        },
      ),
    );
  }
}
