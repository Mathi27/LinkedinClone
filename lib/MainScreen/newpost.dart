import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:linkedinui/StorageConnect/storageconnection.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_creator/story_creator.dart';
import 'package:linkedinui/createTemplate/storycreate.dart';
import '../Provider/google_sign_In.dart';

class newPostPage extends StatefulWidget {
  const newPostPage({super.key});

  @override
  State<newPostPage> createState() => _newPostPageState();
}

class _newPostPageState extends State<newPostPage> {
  @override
  Widget build(BuildContext context) {
    final Storage stroage = Storage();
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                        '${FirebaseAuth.instance.currentUser!.photoURL}',
                        width: 90,
                        height: 90,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text("Mathi Yuvarajan T.K"),
                      SizedBox(
                        height: 5,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              )),
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.photo),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            InkWell(
                                                onTap: () async {
                                                  final results =
                                                      await FilePicker.platform
                                                          .pickFiles(
                                                    allowMultiple: false,
                                                    type: FileType.custom,
                                                    allowedExtensions: [
                                                      'png',
                                                      'jpg'
                                                    ],
                                                  );
                                                  if (results == null) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                        backgroundColor:
                                                            Colors.red,
                                                        content: Text(
                                                          "No File Selected",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                    );
                                                    return null;
                                                  }
                                                  final path =
                                                      results.files.single.path;
                                                  final filename =
                                                      results.files.single.name;
                                                  stroage
                                                      .uploadFile(
                                                          path!, filename)
                                                      .then((value) =>
                                                          print("done"));
                                                  print(path);
                                                  print(filename);
                                                },
                                                child: Text("Add a Photo"))
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.video_call),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Take a video")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.widgets),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.of(context)
                                                    .push(MaterialPageRoute(
                                                  builder: (context) =>
                                                      TemplateCreator(),
                                                ));
                                              },
                                              child: Text("Use a template"),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.celebration),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Celebrate an occasion")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.document_scanner),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Add a document")
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.share),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("Share that you're hiding")
                                          ],
                                        ),
                                      ]),
                                );
                              });
                        },
                        child: Row(
                          children: [
                            Icon(Icons.maps_ugc_rounded),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Choose',
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
