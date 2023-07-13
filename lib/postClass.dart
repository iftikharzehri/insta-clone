import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
//post class

class addPostClass extends StatefulWidget {
  const addPostClass({super.key});

  @override
  State<addPostClass> createState() => _addPostClassState();
}

class _addPostClassState extends State<addPostClass> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("post class"),
    );
  }
}
