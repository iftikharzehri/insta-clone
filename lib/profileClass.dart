// ignore: file_names
import 'package:flutter/material.dart';
//profil class

// ignore: camel_case_types
class profileClass extends StatefulWidget {
  const profileClass({super.key});

  @override
  State<profileClass> createState() => _profileClassState();
}

// ignore: camel_case_types
class _profileClassState extends State<profileClass> {
  int _selectedTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Text("iftikhar_zehri"),
                Icon(
                  Icons.expand_circle_down_outlined,
                  color: Colors.white,
                )
              ],
            ),
            actions: [
              Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 500,
              color: Colors.black,
              child: Column(
                children: [
                  const Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20.0, left: 8),
                                //  profile image
                                child: CircleAvatar(
                                  radius: 35,
                                  child: ClipOval(
                                    child: Image(
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg"),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                //user name
                                padding: EdgeInsets.only(top: 8.0, left: 15),
                                child: Text(
                                  "iftikhar zehri",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "CS student 🎓",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "programmer 💻",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "Artist 🖌",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "that's it ....🤷🤷",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 22,
                          ),
                          Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  // total number of posts with text "post"
                                  children: [
                                    Text(
                                      "30",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Posts",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.end,
                                  // total number of followers with text "followers"
                                  children: [
                                    Text(
                                      "2312",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Followers",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  // total number of following with text "following"
                                  children: [
                                    Text(
                                      "12",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
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
                    height: 15,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[800],
                            alignment: Alignment.centerLeft,
                          ),
                          onPressed: () {},
                          child: const Column(
                            children: [
                              Text(
                                "Professional Dashboard",
                              ),
                              Text(
                                "29 accounts reached in the last 30 days.",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            children: [
                              SizedBox(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[800],
                                    alignment: Alignment.centerLeft,
                                  ),
                                  onPressed: () {},
                                  child: const Text("Edit Profile"),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[800],
                                    alignment: Alignment.centerLeft,
                                  ),
                                  onPressed: () {},
                                  child: const Text("Share Profile"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              child: ClipOval(
                                child: Image(
                                  height: 200,
                                  width: 200,
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://images.pexels.com/photos/14010742/pexels-photo-14010742.jpeg"),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Highlights",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 8,
                        ),
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
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              "Highlights",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
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
                ],
              ),
            ),
          ),
          if (_selectedTabIndex == 0)
            SliverToBoxAdapter(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.amber,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const Image(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/4495426/pexels-photo-4495426.jpeg"),
                    );
                  },
                ),
              ),
            ),
          if (_selectedTabIndex == 1)
            SliverToBoxAdapter(
              child: SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const Image(
                      image: NetworkImage(
                          "https://images.pexels.com/photos/17565395/pexels-photo-17565395/free-photo-of-wood-fashion-man-people.jpeg"),
                    );
                  },
                ),
              ),
            ),
        ],
      ),

      // appBar: AppBar(
      //   backgroundColor: Colors.black87,
      //   title: const Text(
      //     "iftikhar_zehri",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(
      //         Icons.add_box_outlined,
      //         color: Colors.white,
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(
      //         Icons.more_vert,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ],
      // ),
      // body: Container(
      //   color: Colors.black,
      //   height: double.infinity,
      //   // child: Padding(
      //   //   padding: const EdgeInsets.all(8.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.only(left: 8.0, top: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             CircleAvatar(
      //               radius: 35,
      //               child: ClipOval(
      //                 child: Image.asset("images/a.png",
      //                     height: 100, width: 100, fit: BoxFit.cover),
      //               ),
      //             ),
      //             const Padding(
      //               padding: EdgeInsets.only(right: 16.0),
      //               child: Row(
      //                 children: [
      //                   // Padding(
      //                   //   padding: EdgeInsets.all(15.0),
      //                   // child:
      //                   Column(
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         "30",
      //                         style: TextStyle(
      //                           fontWeight: FontWeight.bold,
      //                           color: Colors.white,
      //                           fontSize: 20,
      //                         ),
      //                       ),
      //                       Text(
      //                         "Posts",
      //                         style: TextStyle(
      //                           // fontWeight: FontWeight.bold,
      //                           color: Colors.white,
      //                           // fontSize: 20,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   SizedBox(
      //                     width: 20,
      //                   ),
      //                   Column(
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         "3432",
      //                         style: TextStyle(
      //                           fontWeight: FontWeight.bold,
      //                           color: Colors.white,
      //                           fontSize: 20,
      //                         ),
      //                       ),
      //                       Text(
      //                         "Followers",
      //                         style: TextStyle(
      //                           // fontWeight: FontWeight.bold,
      //                           color: Colors.white,
      //                           // fontSize: 20,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   SizedBox(
      //                     width: 20,
      //                   ),
      //                   Column(
      //                     // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //                     children: [
      //                       Text(
      //                         "655",
      //                         style: TextStyle(
      //                           fontWeight: FontWeight.bold,
      //                           color: Colors.white,
      //                           fontSize: 20,
      //                         ),
      //                       ),
      //                       Text(
      //                         "Following",
      //                         style: TextStyle(
      //                           // fontWeight: FontWeight.bold,
      //                           color: Colors.white,
      //                           // fontSize: 20,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   SizedBox(
      //                     width: 20,
      //                   ),
      //                   // ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.only(
      //           left: 15.0,
      //           top: 12,
      //         ),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               "iftikhar zehri",
      //               style: TextStyle(
      //                 fontWeight: FontWeight.bold,
      //                 color: Colors.white,
      //               ),
      //             ),
      //             SizedBox(height: 12),
      //             Text(
      //               "Artist",
      //               style: TextStyle(
      //                 color: Colors.white,
      //               ),
      //             ),
      //             SizedBox(height: 5),
      //             Text(
      //               "@4348325324",
      //               style: TextStyle(
      //                 color: Colors.white,
      //               ),
      //             ),
      //             SizedBox(height: 5),
      //             Text(
      //               "CS 💻 student",
      //               style: TextStyle(
      //                 color: Colors.white,
      //               ),
      //             ),
      //             SizedBox(height: 5),
      //             Text(
      //               "Programmer 💻 and 🍵😋er",
      //               style: TextStyle(
      //                 color: Colors.white,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 12,
      //       ),
      //       Column(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8),
      //             child: SizedBox(
      //               width: double.infinity,
      //               height: 50,
      //               child: ElevatedButton(
      //                 style: ElevatedButton.styleFrom(
      //                   backgroundColor: Colors.grey.shade800,
      //                 ),
      //                 onPressed: () {},
      //                 child: const Align(
      //                   alignment: Alignment.topLeft,
      //                   child: Column(
      //                     children: [
      //                       SizedBox(height: 8),
      //                       Text(
      //                         "Professional Dashboard",
      //                       ),
      //                       SizedBox(
      //                         height: 2,
      //                       ),
      //                       Text(
      //                         "45 accounts reached in the last 30 days.",
      //                         style: TextStyle(
      //                           fontSize: 12,
      //                           fontWeight: FontWeight.normal,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           const SizedBox(
      //             height: 5,
      //           ),
      //           Row(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Expanded(
      //                 child: Column(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     Row(
      //                       children: [
      //                         ElevatedButton(
      //                           style: ElevatedButton.styleFrom(
      //                               backgroundColor: Colors.grey.shade800),
      //                           onPressed: () {},
      //                           child: const Text("Edit profile"),
      //                         ),
      //                         const SizedBox(
      //                           width: 2,
      //                         ),
      //                         ElevatedButton(
      //                           style: ElevatedButton.styleFrom(
      //                               backgroundColor: Colors.grey.shade800),
      //                           onPressed: () {},
      //                           child: const Text("Share profile"),
      //                         ),
      //                       ],
      //                     ),
      //                   ],
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ],
      //       ),
      //       const SizedBox(
      //         height: 5,
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(14.0),
      //         child: Row(
      //           children: [
      //             Column(
      //               children: [
      //                 CircleAvatar(
      //                   radius: 30,
      //                   child: ClipOval(
      //                     child: Image.asset(
      //                       "images/billieStatus.png",
      //                       height: 200,
      //                       width: 200,
      //                       fit: BoxFit.fill,
      //                     ),
      //                   ),
      //                 ),
      //                 const Text(
      //                   "Highlights",
      //                   style: TextStyle(color: Colors.white),
      //                 )
      //               ],
      //             ),
      //             const Padding(
      //               padding: EdgeInsets.only(top: 8, left: 18.0),
      //               child: Column(
      //                 children: [
      //                   CircleAvatar(
      //                     backgroundColor: Colors.white,
      //                     radius: 30,
      //                     child: CircleAvatar(
      //                       radius: 25,
      //                       backgroundColor: Colors.grey,
      //                       child: Icon(
      //                         Icons.add,
      //                         size: 40,
      //                       ),
      //                     ),
      //                   ),
      //                   Text(
      //                     "New",
      //                     style: TextStyle(color: Colors.white),
      //                   )
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       // const SizedBox(
      //       //   height: 50,
      //       //
      //       //),

      //       DefaultTabController(
      //         length: 3,
      //         child: TabBar(
      //           onTap: (index) {
      //             setState(() {
      //               _selectedTabIndex = index;
      //             });
      //           },
      //           indicatorColor: Colors.white,
      //           tabs: const [
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Padding(
      //                   padding: EdgeInsets.all(8),
      //                   child: Icon(
      //                     Icons.grid_on,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Padding(
      //                   padding: EdgeInsets.all(8),
      //                   child: Icon(
      //                     Icons.view_sidebar_outlined,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Padding(
      //                   padding: EdgeInsets.only(left: 20),
      //                   child: Icon(
      //                     Icons.person_pin_outlined,
      //                     color: Colors.white,
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //       if (_selectedTabIndex == 0)
      //         Expanded(
      //           child: GridView.count(
      //             crossAxisCount: 3,
      //             primary: false,
      //             crossAxisSpacing: 10,
      //             mainAxisSpacing: 10,
      //             children: List.generate(
      //               100,
      //               (index) {
      //                 return ElevatedButton(
      //                   onPressed: () {
      //                     showDialog(
      //                       context: context,
      //                       builder: ((context) {
      //                         return Dialog(
      //                           child: SizedBox(
      //                             height: 550,

      //                             // width: double.infinity,
      //                             child: Container(
      //                               // height: 30,
      //                               // width: 30,
      //                               color: Colors.black,
      //                               child: Padding(
      //                                 padding: const EdgeInsets.all(8.0),
      //                                 child: Column(
      //                                   crossAxisAlignment:
      //                                       CrossAxisAlignment.start,
      //                                   children: [
      //                                     SizedBox(
      //                                       child: Row(
      //                                         mainAxisAlignment:
      //                                             MainAxisAlignment.start,
      //                                         children: [
      //                                           CircleAvatar(
      //                                             radius: 25,
      //                                             child: ClipOval(
      //                                               child: Image.asset(
      //                                                 "images/a.png",
      //                                                 height: 100,
      //                                                 width: 100,
      //                                                 fit: BoxFit.cover,
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           const Padding(
      //                                             padding: EdgeInsets.all(8.0),
      //                                             child: Text(
      //                                               "iftikhar_zehri",
      //                                               style: TextStyle(
      //                                                   fontWeight:
      //                                                       FontWeight.bold,
      //                                                   color: Colors.white),
      //                                             ),
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                     const SizedBox(
      //                                       height: 5,
      //                                     ),
      //                                     Container(
      //                                       color: Colors.black,
      //                                       width: double.infinity,
      //                                       height: 420,
      //                                       child: Image.asset(
      //                                         "images/3.jpeg",
      //                                         height: double.infinity,
      //                                         width: double.infinity,
      //                                         fit: BoxFit.cover,
      //                                       ),
      //                                     ),
      //                                     BottomNavigationBar(
      //                                       showUnselectedLabels: false,
      //                                       showSelectedLabels: false,
      //                                       items: const [
      //                                         BottomNavigationBarItem(
      //                                           backgroundColor: Colors.black,
      //                                           icon: Icon(
      //                                             Icons.favorite_outline,
      //                                             color: Colors.white,
      //                                           ),
      //                                           label: "FAVORITE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(
      //                                               Icons.maps_ugc_outlined),
      //                                           label: "MESSAGE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(Icons.send),
      //                                           label: "SHARE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(
      //                                               Icons.more_horiz_outlined),
      //                                           label: "MORE",
      //                                         ),
      //                                       ],
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         );
      //                       }),
      //                     );
      //                   },
      //                   child: Image.asset(
      //                     "images/3.jpeg",
      //                     height: double.infinity,
      //                     width: double.infinity,
      //                     fit: BoxFit.cover,
      //                   ),
      //                 );
      //               },
      //             ),
      //           ),
      //         ),
      //       if (_selectedTabIndex == 1)
      //         Expanded(
      //           child: GridView.count(
      //             crossAxisCount: 3,
      //             primary: false,
      //             crossAxisSpacing: 10,
      //             mainAxisSpacing: 10,
      //             children: List.generate(
      //               5,
      //               (index) {
      //                 return ElevatedButton(
      //                   onPressed: () {
      //                     showDialog(
      //                       context: context,
      //                       builder: ((context) {
      //                         return Dialog(
      //                           child: SizedBox(
      //                             height: 550,

      //                             // width: double.infinity,
      //                             child: Container(
      //                               // height: 30,
      //                               // width: 30,
      //                               color: Colors.black,
      //                               child: Padding(
      //                                 padding: const EdgeInsets.all(8.0),
      //                                 child: Column(
      //                                   crossAxisAlignment:
      //                                       CrossAxisAlignment.start,
      //                                   children: [
      //                                     SizedBox(
      //                                       child: Row(
      //                                         mainAxisAlignment:
      //                                             MainAxisAlignment.start,
      //                                         children: [
      //                                           CircleAvatar(
      //                                             radius: 25,
      //                                             child: ClipOval(
      //                                               child: Image.asset(
      //                                                 "images/billieStatus.png",
      //                                                 height: 100,
      //                                                 width: 100,
      //                                                 fit: BoxFit.cover,
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           const Padding(
      //                                             padding: EdgeInsets.all(8.0),
      //                                             child: Text(
      //                                               "iftikhar_zehri",
      //                                               style: TextStyle(
      //                                                   fontWeight:
      //                                                       FontWeight.bold,
      //                                                   color: Colors.white),
      //                                             ),
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                     const SizedBox(
      //                                       height: 5,
      //                                     ),
      //                                     Container(
      //                                       color: Colors.black,
      //                                       width: double.infinity,
      //                                       height: 420,
      //                                       child: Image.asset(
      //                                         "images/billieStatus.png",
      //                                         height: double.infinity,
      //                                         width: double.infinity,
      //                                         fit: BoxFit.cover,
      //                                       ),
      //                                     ),
      //                                     BottomNavigationBar(
      //                                       showUnselectedLabels: false,
      //                                       showSelectedLabels: false,
      //                                       items: const [
      //                                         BottomNavigationBarItem(
      //                                           backgroundColor: Colors.black,
      //                                           icon: Icon(
      //                                             Icons.favorite_outline,
      //                                             color: Colors.white,
      //                                           ),
      //                                           label: "FAVORITE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(
      //                                               Icons.maps_ugc_outlined),
      //                                           label: "MESSAGE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(Icons.send),
      //                                           label: "SHARE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(
      //                                               Icons.more_horiz_outlined),
      //                                           label: "MORE",
      //                                         ),
      //                                       ],
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         );
      //                       }),
      //                     );
      //                   },
      //                   child: Image.asset(
      //                     "images/billieStatus.png",
      //                     height: double.infinity,
      //                     width: double.infinity,
      //                     fit: BoxFit.cover,
      //                   ),
      //                 );
      //               },
      //             ),
      //           ),
      //         ),
      //       if (_selectedTabIndex == 2)
      //         Expanded(
      //           child: GridView.count(
      //             crossAxisCount: 3,
      //             primary: false,
      //             crossAxisSpacing: 10,
      //             mainAxisSpacing: 10,
      //             children: List.generate(
      //               7,
      //               (index) {
      //                 return ElevatedButton(
      //                   onPressed: () {
      //                     showDialog(
      //                       context: context,
      //                       builder: ((context) {
      //                         return Dialog(
      //                           child: SizedBox(
      //                             height: 550,

      //                             // width: double.infinity,
      //                             child: Container(
      //                               // height: 30,
      //                               // width: 30,
      //                               color: Colors.black,
      //                               child: Padding(
      //                                 padding: const EdgeInsets.all(8.0),
      //                                 child: Column(
      //                                   crossAxisAlignment:
      //                                       CrossAxisAlignment.start,
      //                                   children: [
      //                                     SizedBox(
      //                                       child: Row(
      //                                         mainAxisAlignment:
      //                                             MainAxisAlignment.start,
      //                                         children: [
      //                                           CircleAvatar(
      //                                             radius: 25,
      //                                             child: ClipOval(
      //                                               child: Image.asset(
      //                                                 "images/1.jpeg",
      //                                                 // height: 100,
      //                                                 // width: 100,
      //                                                 fit: BoxFit.fill,
      //                                               ),
      //                                             ),
      //                                           ),
      //                                           const Padding(
      //                                             padding: EdgeInsets.all(8.0),
      //                                             child: Text(
      //                                               "iftikhar_zehri",
      //                                               style: TextStyle(
      //                                                   fontWeight:
      //                                                       FontWeight.bold,
      //                                                   color: Colors.white),
      //                                             ),
      //                                           ),
      //                                         ],
      //                                       ),
      //                                     ),
      //                                     const SizedBox(
      //                                       height: 5,
      //                                     ),
      //                                     Container(
      //                                       color: Colors.black,
      //                                       width: double.infinity,
      //                                       height: 420,
      //                                       child: Image.asset(
      //                                         "images/1.jpeg",
      //                                         height: double.infinity,
      //                                         width: double.infinity,
      //                                         fit: BoxFit.fill,
      //                                       ),
      //                                     ),
      //                                     BottomNavigationBar(
      //                                       showUnselectedLabels: false,
      //                                       showSelectedLabels: false,
      //                                       items: const [
      //                                         BottomNavigationBarItem(
      //                                           backgroundColor: Colors.black,
      //                                           icon: Icon(
      //                                             Icons.favorite_outline,
      //                                             color: Colors.white,
      //                                           ),
      //                                           label: "FAVORITE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(
      //                                               Icons.maps_ugc_outlined),
      //                                           label: "MESSAGE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(Icons.send),
      //                                           label: "SHARE",
      //                                         ),
      //                                         BottomNavigationBarItem(
      //                                           icon: Icon(
      //                                               Icons.more_horiz_outlined),
      //                                           label: "MORE",
      //                                         ),
      //                                       ],
      //                                     ),
      //                                   ],
      //                                 ),
      //                               ),
      //                             ),
      //                           ),
      //                         );
      //                       }),
      //                     );
      //                   },
      //                   child: Image.asset(
      //                     "images/2.jpeg",
      //                     height: double.infinity,
      //                     width: double.infinity,
      //                     fit: BoxFit.cover,
      //                   ),
      //                 );
      //               },
      //             ),
      //           ),
      //         ),
      //     ],
      //   ),
      // ),
    );
  }
}
