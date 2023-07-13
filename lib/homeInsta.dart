import 'package:flutter/material.dart';
import 'package:instagram_clone/profileClass.dart';

import 'homeClass.dart';
import 'main.dart';
import 'postClass.dart';
import 'searchClass.dart';

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
