import 'package:biz_hub/Blog_Search.dart';
import 'package:biz_hub/Blog_Stories.dart';
import 'package:biz_hub/Upload_Blog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Blog_Search(),
    );
  }
}