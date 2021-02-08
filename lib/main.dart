
import 'package:flutter/material.dart';
import 'package:flutter_app_http_demo/comments/CommentScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CommentScreen(title: 'Comments'),
    );
  }
}
