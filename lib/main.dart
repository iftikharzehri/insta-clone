import 'package:flutter/material.dart';
// import 'package:path/path.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const homeInsta({super.key});

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
        ),
        // body: const TabBarView(
        //   children: [
        //     homeclass(),
        //     searchClass(),
        //     searchClass(),
        //     searchClass(),
        //     searchClass(),
        //     searchClass(),
        //   ],
        // ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Colors.black),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.white,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                ),
                label: "home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_outlined,
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
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

class searchClass extends StatelessWidget {
  const searchClass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Search"),
    );
  }
}

class homeclass extends StatelessWidget {
  const homeclass({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("home class"),
    );
  }
}
