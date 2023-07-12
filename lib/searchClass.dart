import 'package:flutter/material.dart';

//search class

class searchClass extends StatefulWidget {
  const searchClass({super.key});

  @override
  State<searchClass> createState() => _searchClassState();
}

class _searchClassState extends State<searchClass> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.black],
              // begin: Alignment.topLeft,
              // end: Alignment.bottomRight
            ),
          ),
        ),
        title: SizedBox(
          child: SizedBox(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  hoverColor: Colors.white,
                  hintText: "Search...",
                  hintStyle: const TextStyle(color: Colors.white),
                  fillColor: Colors.grey,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Colors.teal, width: 0, style: BorderStyle.none),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () => _textEditingController.clear(),
                    icon: const Icon(
                      Icons.remove_sharp,
                      color: Colors.white,
                    ),
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
                onChanged: (value) {
                  //put the functionality here
                },
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
          child: Container(
              color: Colors.cyan,
              child: const Text("make a grid view and display images"))),
    );
  }
}

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
