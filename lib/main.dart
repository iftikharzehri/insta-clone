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
class homeInsta extends StatelessWidget {
  const homeInsta({super.key});

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
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: Colors.blue,
            ),
            tabs: [
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  // radius: 25,
                  child: ClipOval(
                    child: Image.asset(
                      "images/a.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  // radius: 25,
                  child: ClipOval(
                    child: Image.asset(
                      "images/a.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                    child: Image.asset(
                      "images/a.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                    child: Image.asset(
                      "images/a.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                    child: Image.asset(
                      "images/a.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  radius: 25,
                  child: ClipOval(
                    child: Image.asset(
                      "images/a.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // Icon(Icons.abc),
            ],
          ),

          actions: const <Widget>[
            Icon(Icons.heart_broken),
            Icon(Icons.message),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
          ],
        ),
        body: const TabBarView(
          children: [
            homeclass(),
            searchClass(),
            searchClass(),
            searchClass(),
            searchClass(),
            searchClass(),
          ],
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
