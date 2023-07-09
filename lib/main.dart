// ignore_for_file: camel_case_typ, camel_case_types
import 'dart:async';
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
    final themeData = ThemeData(
      canvasColor:
          Colors.black, // Set the background color for BottomNavigationBar
      // ... other theme configurations
    );
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
                  child: Icon(Icons.maps_ugc_outlined),
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
  int _selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text(
          "iftikhar_zehri",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        // child: Padding(
        //   padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 35,
                    child: ClipOval(
                      child: Image.asset("images/a.png",
                          height: 100, width: 100, fit: BoxFit.cover),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Row(
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.all(15.0),
                        // child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "30",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                // fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "3432",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                // fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "655",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                                // fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        // ),
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
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Artist",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "@4348325324",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "CS 💻 student",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Programmer 💻 and 🍵😋er",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade800,
                      ),
                      onPressed: () {},
                      child: const Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Text(
                              "Professional Dashboard",
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "45 accounts reached in the last 30 days.",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade800),
                                onPressed: () {},
                                child: const Text("Edit profile"),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey.shade800),
                                onPressed: () {},
                                child: const Text("Share profile"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        child: ClipOval(
                          child: Image.asset(
                            "images/billieStatus.png",
                            height: 200,
                            width: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      const Text(
                        "Highlights",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8, left: 18.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.grey,
                            child: Icon(
                              Icons.add,
                              size: 40,
                            ),
                          ),
                        ),
                        Text(
                          "New",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // const SizedBox(
            //   height: 50,
            //
            //),

            DefaultTabController(
              length: 3,
              child: TabBar(
                onTap: (index) {
                  setState(() {
                    _selectedTabIndex = index;
                  });
                },
                indicatorColor: Colors.white,
                tabs: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.grid_on,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.view_sidebar_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Icon(
                          Icons.person_pin_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (_selectedTabIndex == 0)
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(
                    100,
                    (index) {
                      return ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: ((context) {
                              return Dialog(
                                child: SizedBox(
                                  height: 550,

                                  // width: double.infinity,
                                  child: Container(
                                    // height: 30,
                                    // width: 30,
                                    color: Colors.black,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  radius: 25,
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                      "images/a.png",
                                                      height: 100,
                                                      width: 100,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "iftikhar_zehri",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            color: Colors.black,
                                            width: double.infinity,
                                            height: 420,
                                            child: Image.asset(
                                              "images/3.jpeg",
                                              height: double.infinity,
                                              width: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          BottomNavigationBar(
                                            showUnselectedLabels: false,
                                            showSelectedLabels: false,
                                            items: const [
                                              BottomNavigationBarItem(
                                                backgroundColor: Colors.black,
                                                icon: Icon(
                                                  Icons.favorite_outline,
                                                  color: Colors.white,
                                                ),
                                                label: "FAVORITE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(
                                                    Icons.maps_ugc_outlined),
                                                label: "MESSAGE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(Icons.send),
                                                label: "SHARE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(
                                                    Icons.more_horiz_outlined),
                                                label: "MORE",
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                        child: Image.asset(
                          "images/3.jpeg",
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
            if (_selectedTabIndex == 1)
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(
                    5,
                    (index) {
                      return ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: ((context) {
                              return Dialog(
                                child: SizedBox(
                                  height: 550,

                                  // width: double.infinity,
                                  child: Container(
                                    // height: 30,
                                    // width: 30,
                                    color: Colors.black,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  radius: 25,
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                      "images/billieStatus.png",
                                                      height: 100,
                                                      width: 100,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "iftikhar_zehri",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            color: Colors.black,
                                            width: double.infinity,
                                            height: 420,
                                            child: Image.asset(
                                              "images/billieStatus.png",
                                              height: double.infinity,
                                              width: double.infinity,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          BottomNavigationBar(
                                            showUnselectedLabels: false,
                                            showSelectedLabels: false,
                                            items: const [
                                              BottomNavigationBarItem(
                                                backgroundColor: Colors.black,
                                                icon: Icon(
                                                  Icons.favorite_outline,
                                                  color: Colors.white,
                                                ),
                                                label: "FAVORITE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(
                                                    Icons.maps_ugc_outlined),
                                                label: "MESSAGE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(Icons.send),
                                                label: "SHARE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(
                                                    Icons.more_horiz_outlined),
                                                label: "MORE",
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                        child: Image.asset(
                          "images/billieStatus.png",
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
            if (_selectedTabIndex == 2)
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  primary: false,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(
                    7,
                    (index) {
                      return ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: ((context) {
                              return Dialog(
                                child: SizedBox(
                                  height: 550,

                                  // width: double.infinity,
                                  child: Container(
                                    // height: 30,
                                    // width: 30,
                                    color: Colors.black,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  radius: 25,
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                      "images/1.jpeg",
                                                      // height: 100,
                                                      // width: 100,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    "iftikhar_zehri",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Container(
                                            color: Colors.black,
                                            width: double.infinity,
                                            height: 420,
                                            child: Image.asset(
                                              "images/1.jpeg",
                                              height: double.infinity,
                                              width: double.infinity,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          BottomNavigationBar(
                                            showUnselectedLabels: false,
                                            showSelectedLabels: false,
                                            items: const [
                                              BottomNavigationBarItem(
                                                backgroundColor: Colors.black,
                                                icon: Icon(
                                                  Icons.favorite_outline,
                                                  color: Colors.white,
                                                ),
                                                label: "FAVORITE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(
                                                    Icons.maps_ugc_outlined),
                                                label: "MESSAGE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(Icons.send),
                                                label: "SHARE",
                                              ),
                                              BottomNavigationBarItem(
                                                icon: Icon(
                                                    Icons.more_horiz_outlined),
                                                label: "MORE",
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          );
                        },
                        child: Image.asset(
                          "images/1.jpeg",
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
