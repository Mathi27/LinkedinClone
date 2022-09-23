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
      body: Center(child: Text('New Post Can be added here')),
    );
  }
}