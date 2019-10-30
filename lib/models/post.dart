import 'package:flutter/material.dart';

class Post{
  final int id;
  final int category;
  final String title;
  final String img;
  final String thumbnail;
  final String details;

  Post({this.id, this.category, this.title, this.img, this.thumbnail, this.details});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id:json['id'],
      category:json['category'],
      title:json['title'],
      img:json['img'],
      details:json['details'],
      thumbnail:json['thumbnail']
    );
  }

}