import 'package:flutter/material.dart';

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

//reels class

class reelsClass extends StatefulWidget {
  const reelsClass({super.key});

  @override
  State<reelsClass> createState() => _reelsClassState();
}

class _reelsClassState extends State<reelsClass> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("reels class"),
    );
  }
}
