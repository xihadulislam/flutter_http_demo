import 'package:flutter/material.dart';
import 'package:flutter_app_http_demo/comments/Comment.dart';
import 'package:flutter_app_http_demo/comments/CommentList.dart';
import 'package:http/http.dart' as http;

import '../Repo.dart';

class CommentScreen extends StatefulWidget {
  final String title;

  CommentScreen({this.title}) : super();

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<List<Comment>>(
          future: fetchComments(http.Client()),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? CommentList(comments: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
