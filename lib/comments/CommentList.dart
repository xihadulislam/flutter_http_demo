


import 'package:flutter/material.dart';
import 'package:flutter_app_http_demo/comments/Comment.dart';



class CommentList extends StatelessWidget {
  final List<Comment> comments;

  CommentList({Key key, this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: comments.length,
      itemBuilder: (context, index) {
        return Text(comments[index].name);
      },
    );
  }
}