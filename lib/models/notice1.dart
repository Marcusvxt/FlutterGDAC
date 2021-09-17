import 'package:flutter/material.dart';

class Notice1 {
  final String noticetitle;
  final String imagePath;
  final String desc;
  final String uid;

  Notice1({ this.noticetitle, this.imagePath, this.desc, this.uid });

  factory Notice1.fromJson(Map<dynamic,dynamic> parsedJson){
    return Notice1(noticetitle: parsedJson['Name'], imagePath: parsedJson['image'], desc: parsedJson['descripition'], uid: parsedJson['uid']);
  }
}