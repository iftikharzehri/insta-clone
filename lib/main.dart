// ignore_for_file: camel_case_typ, camel_case_types

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
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  // _selectedIndex == 0;
                  homeclass();
                },
                child: const Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  // _selectedIndex == 1;
                  // searchClass();
                },
                child: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              label: "search",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                size: 30,
              ),
              label: "post",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call,
                size: 30,
              ),
              label: "reels",
            ),
            const BottomNavigationBarItem(
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
            //   color: Colors.blue,
            // ),
            tabs: [
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                child: ClipOval(
                  child: Image.asset(
                    "images/a.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          // actions: const <Widget>[
          //   Row(
          //     children: [
          //       Padding(
          //         padding: EdgeInsets.only(right: 25.0, top: 8),
          //         child: Icon(Icons.favorite_border),
          //       ),
          //       Padding(
          //         padding: EdgeInsets.only(right: 25, top: 8),
          //         child: Icon(Icons.maps_ugc),
          //       )
          //     ],
          //   ),
          // ],
        ),
        body: Text("home"),
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
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Search"),
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
    return Scaffold(
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
    return const Scaffold(
      body: Text("profile"),
    );
  }
}
