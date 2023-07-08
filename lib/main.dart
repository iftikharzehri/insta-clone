// ignore_for_file: camel_case_typ, camel_case_types
import 'dart:io';
import 'package:flutter/material.dart';
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

// ignore: camel_case_types
class homeInsta extends StatefulWidget {
  const homeInsta({Key? key}) : super(key: key);
  @override
  State<homeInsta> createState() => _homeInstaState();
}

class _homeInstaState extends State<homeInsta> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // length: 6,
      // child: Scaffold(

      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          homeclass(),
          searchClass(),
          addPostClass(),
          reelsClass(),
          profileClass(),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Colors.black),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 163, 65, 65),
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: "search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                size: 30,
              ),
              label: "post",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call,
                size: 30,
              ),
              label: "reels",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "profile",
            ),
          ],
        ),
      ),
    );
  }
}

//home class
class homeclass extends StatefulWidget {
  const homeclass({super.key});

  @override
  State<homeclass> createState() => _homeclassState();
}

class _homeclassState extends State<homeclass> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: 80,
          backgroundColor: Colors.black,
          title: const Text(
            "Instagram",
            style: TextStyle(fontFamily: "LobsterTwo", fontSize: 28),
          ),

          actions: const <Widget>[
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 25.0, top: 8),
                  child: Icon(Icons.favorite_border),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25, top: 8),
                  child: Icon(Icons.maps_ugc),
                )
              ],
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicator: null,
            // indicator: BoxDecoration(
            //   borderRadius: BorderRadius.circular(25),
            //   color: Colors. ,
            // ),
            tabs: [
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/billieStatus.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/heartIcon.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.pink,
          height: 700,
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 50.0,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "iftikhar zehri",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

//profil class

class profileClass extends StatefulWidget {
  const profileClass({super.key});

  @override
  State<profileClass> createState() => _profileClassState();
}

class _profileClassState extends State<profileClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "iftikhar_zehri",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(Icons.more_vert, color: Colors.white),
          Icon(
            Icons.add_box_outlined,
            color: Colors.white,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      child: ClipOval(
                        child: Image.asset("images/a.png"),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "30",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "300",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "1200",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 15.0,
                  top: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "iftikhar zehri",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3, left: 3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "artist",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "@4348325324",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "CS 💻 student",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Programmer 💻 and 🍵😋er",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // child: GridView.count(
        //   // Create a grid with 2 columns. If you change the scrollDirection to
        //   // horizontal, this produces 3 rows.
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 4,
        //   mainAxisSpacing: 1,
        //   // Generate 100 widgets that display their index in the List.
        //   children: List.generate(20, (index) {
        //     return Column(
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.all(3),
        //           child: Image.asset("images/a.png"),
        //         ),
        //       ],
        //     );
        //   }),
        // ),
      ),
    );
  }
}
