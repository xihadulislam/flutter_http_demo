

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'Photo.dart';
import 'comments/Comment.dart';

Future<List<Photo>> fetchPhotos(http.Client client) async {
  final response =
  await client.get('https://jsonplaceholder.typicode.com/photos');

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parsePhotos, response.body);
}

List<Photo> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}


Future<List<Comment>> fetchComments(http.Client client)async {

  http://data.edaning.com:8010/api/mobile-device/v1/latest_device_list/?limit=12&page=1
  var baseUrl = "jsonplaceholder.typicode.com";
  var queryParameters = {
    'postId': '1'
  };

  var uri = Uri.https(baseUrl, 'comments');
  print ( "uri  $uri");
  final response = await client.get(uri);
  return compute(parseComments, response.body);
}

List<Comment> parseComments(String res){
  final parsed = jsonDecode(res).cast <Map<String, dynamic>>();
  return parsed.map<Comment>((json)=> Comment.fromJson(json)).toList();
}

