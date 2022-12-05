import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_33/all_list.dart';
import 'package:project_33/first_page.dart';
import 'list_1.dart';
import 'assets.dart';
import 'list_2.dart';
import 'all_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: page_1(),
    );
  }
}
