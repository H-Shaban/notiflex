import 'dart:convert';

import 'package:notiflex/models/post.dart';
import 'package:http/http.dart' as http;

class DataSet {
  List<dynamic> posts = new List<Post>();

  DataSet() {
    getData();
  }
  void addNewPost(Post post) {
    this.posts.add(post);
  }

  int getCount() {
    return this.posts.length;
  }

  Future getData() async {
    final response =
        await http.get('http://kurself.com/notiflex/posts.json');

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON.
      var data= json.decode(response.body);
      List<dynamic> postsRef = data.map((j) => Post.fromJson(j)).toList();
      this.posts=postsRef;
      return postsRef;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
