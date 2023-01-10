import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:story_creator/story_creator.dart';

class TemplateCreator extends StatefulWidget {
  const TemplateCreator({super.key});

  @override
  State<TemplateCreator> createState() => _TemplateCreatorState();
}

class _TemplateCreatorState extends State<TemplateCreator> {
  File? editedFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Choose Template',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            editedFile != null
                ? Image.file(
                    editedFile!,
                    fit: BoxFit.cover,
                  )
                : SizedBox.shrink(),
            TextButton(
              onPressed: () async {
                final picker = ImagePicker();
                await picker
                    .pickImage(source: ImageSource.gallery)
                    .then((file) async {
                  editedFile = await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => StoryCreator(
                        filePath: file!.path,
                      ),
                    ),
                  );

                  // ------- you have editedFile

                  if (editedFile != null) {
                    print('editedFile: ' + editedFile!.path);
                    setState(() {});
                  }
                });
              },
              child: Text('Pick Image'),
            ),
          ],
        ),
      ),
    );
  }
}
