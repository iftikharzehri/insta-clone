import 'package:flutter/material.dart';
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
                        backgroundColor: Colors.grey.shade800,
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
