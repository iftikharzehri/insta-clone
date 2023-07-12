// ignore: duplicate_ignore
// ignore_for_file: camel_case_typ, camel_case_types
// import 'dart:async';
// import 'dart:io';
import 'package:flutter/material.dart';
// import 'package:instagram_clone/profileClass.dart';

import 'homeInsta.dart';
// import 'package:path/path.dart';
// import 'package:path/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeInsta(),
    );
  }
}
