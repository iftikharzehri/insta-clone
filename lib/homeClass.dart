import 'package:flutter/material.dart';

//home class
class homeclass extends StatefulWidget {
  const homeclass({super.key});

  @override
  State<homeclass> createState() => _homeclassState();
}

class _homeclassState extends State<homeclass> {
  List profileImages = [
    "https://cdn.pixabay.com/photo/2023/07/04/17/28/red-squirrel-8106699_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/08/06/12/06/people-2591874_1280.jpg",
    // "https://cdn.pixabay.com/photo/2016/11/14/03/06/woman-1822459_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/12/31/15/56/portrait-3052641_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/11/08/05/31/boys-1807545_1280.jpg",
    "https://cdn.pixabay.com/photo/2013/02/21/19/10/mother-84628_1280.jpg",
    "https://cdn.pixabay.com/photo/2018/04/05/09/32/portrait-3292287_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/06/20/22/14/man-2425121_1280.jpg",
    "https://cdn.pixabay.com/photo/2014/06/18/13/44/emotions-371238_1280.jpg"
  ];
  List imagepaths = [
    "https://cdn.pixabay.com/photo/2017/07/31/11/21/people-2557396_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
    "https://cdn.pixabay.com/photo/2023/07/04/17/28/red-squirrel-8106699_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/07/11/15/43/pretty-woman-1509956_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
    // "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533_960_720.jpg",
    // "https://cdn.pixabay.com/photo/2013/11/28/10/03/autumn-219972_960_720.jpg",
    // "https://cdn.pixabay.com/photo/2017/12/17/19/08/away-3024773_960_720.jpg",
  ];
  List<String> userNames = [
    "iftikhar zehri",
    "Rehmal zagrain",
    "fazal karim",
    // "john Elia",
    "Aslam baloch",
    "Rehman jan",
    "Muslim Shafi",
    "katrine",
    // "Mark",
    // "elon musk",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: profileImages.length,
      child: Scaffold(
        // appBar: AppBar(
        //   // toolbarHeight: 80,
        //   backgroundColor: Colors.black,
        //   title: const Text(
        //     "Instagram",
        //     style: TextStyle(fontFamily: "LobsterTwo", fontSize: 28),
        //   ),

        //   actions: const <Widget>[
        //     Row(
        //       children: [
        //         Padding(
        //           padding: EdgeInsets.only(right: 25.0, top: 8),
        //           child: Icon(Icons.favorite_border),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(right: 25, top: 8),
        //           child: Icon(Icons.maps_ugc_outlined),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        body: CustomScrollView(
          slivers: [
            //appbar
            const SliverAppBar(
              backgroundColor: Colors.black,
              expandedHeight: 50,
              floating: true,
              pinned: false,
              title: Text(
                "Instagram",
                style: TextStyle(fontFamily: "LobsterTwo", fontSize: 28),
              ),
              actions: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 25.0, top: 8),
                      child: Icon(Icons.favorite_border),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25, top: 8),
                      child: Icon(Icons.maps_ugc_outlined),
                    ),
                  ],
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.black,
                height: 100,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30,
                        child: ClipOval(
                          child: Image.network(
                            imagepaths[index],
                            fit: BoxFit.cover,
                            height: 70,
                            width: 70,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: imagepaths.length,
                ),
              ),
            ),
            SliverList.builder(
              //making container that contains the post, profile, ions etc
              itemBuilder: (context, index) {
                return ClipRect(
                  child: Container(
                    color: index % 2 == 1 ? Colors.amber : Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRect(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  child: ClipOval(
                                    child: Image(
                                      height: 64,
                                      width: 64,
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        profileImages[index],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    userNames[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.more_vert,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Image.network(
                              imagepaths[index],
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: imagepaths.length,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.deepOrange,
                    height: 200,
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Image(
                            fit: BoxFit.fill,
                            height: 60,
                            width: double.infinity,
                            image: NetworkImage(
                              imagepaths[index],
                            ),
                          ),
                        );
                      },
                      itemCount: imagepaths.length,
                    ),
                  ),
                ),
              ),
            ),

            // add the icons here
            //1 fav icon etc
          ],
        ),
        // ), const Row(
        // //                         children: [
        // //                           Padding(
        // //                             padding: EdgeInsets.all(8.0),
        // //                             child: Icon(Icons.favorite_outline,
        // //                                 color: Colors.white),
        // //                           ),
        // // bottom:
        // // TabBar(
        //   isScrollable: true,
        //   indicator: null,
        //   // labelPadding: EdgeInsets.symmetric(horizontal: 16),
        //   // padding: const EdgeInsets.all(1),
        //   tabs: [
        //     for (int i = 0; i < profileImages.length; i++)
        //       Tab(
        //         child: SingleChildScrollView(
        //           child: Column(
        //             children: [
        //               CircleAvatar(
        //                 radius: 35,
        //                 child: ClipOval(
        //                   child: Image.network(
        //                     profileImages[i],
        //                     fit: BoxFit.fitWidth,
        //                     height: 100,
        //                     width: 100,
        //                   ),
        //                 ),
        //               ),
        //               Text("data1"),
        //             ],
        //           ),
        //         ),
        //       ),
        //   ],
        // ),

        // body: ListView.builder(
        //   itemBuilder: (BuildContext context, int index) {
        //     return Padding(
        //       padding: const EdgeInsets.only(bottom: 8.0),
        //       child: SizedBox(
        //         child: Column(
        //           children: [
        //             Image.network(
        //               imagepaths[index],
        //             ),
        //           ],
        //         ),
        //       ),
        //     );
        //   },
        //   itemCount: imagepaths.length,
        // ),

        // body: Column(
        //   children: [
        //     TabBar(
        //       isScrollable: true,
        //       indicator: null,
        //       // labelPadding: EdgeInsets.symmetric(horizontal: 16),
        //       // padding: const EdgeInsets.all(1),
        //       tabs: [
        //         for (int i = 0; i < profileImages.length; i++)
        //           Tab(
        //             child: SingleChildScrollView(
        //               child: Column(
        //                 children: [
        //                   CircleAvatar(
        //                     radius: 35,
        //                     child: ClipOval(
        //                       child: Image.network(
        //                         profileImages[i],
        //                         fit: BoxFit.fitWidth,
        //                         height: 100,
        //                         width: 100,
        //                       ),
        //                     ),
        //                   ),
        //                   Text("data1"),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ListView.builder(
        //           itemBuilder: (BuildContext context, int index) {
        //             return Column(
        //               children: [
        //                 Container(
        //                   color: Colors.black,
        //                   height: 600,
        //                   child: Column(
        //                     children: [
        //                       Padding(
        //                         padding: EdgeInsets.only(left: 8, right: 8),
        //                         child: Row(
        //                           children: [
        //                             CircleAvatar(
        //                               radius: 25,
        //                               child: ClipOval(
        //                                 child: Image.network(
        //                                   profileImages[index],
        //                                   height: 100,
        //                                   width: 100,
        //                                   fit: BoxFit.cover,
        //                                 ),
        //                               ),
        //                             ),
        //                             Expanded(
        //                               child: Padding(
        //                                 padding: EdgeInsets.all(8),
        //                                 child: Column(
        //                                   crossAxisAlignment:
        //                                       CrossAxisAlignment.start,
        //                                   children: [
        //                                     Text(
        //                                       userNames[index],
        //                                       style: const TextStyle(
        //                                         color: Colors.white,
        //                                         fontWeight: FontWeight.bold,
        //                                       ),
        //                                     ),
        //                                   ],
        //                                 ),
        //                               ),
        //                             ),
        //                             const Padding(
        //                               padding: EdgeInsets.all(8),
        //                               child: Icon(
        //                                 Icons.more_vert,
        //                                 color: Colors.white,
        //                               ),
        //                             ),
        //                           ],
        //                         ),
        //                       ),
        //                       Expanded(
        //                         child: Image.network(
        //                           imagepaths[index],
        //                         ),
        //                       ),
        //                       const Row(
        //                         children: [
        //                           Padding(
        //                             padding: EdgeInsets.all(8.0),
        //                             child: Icon(Icons.favorite_outline,
        //                                 color: Colors.white),
        //                           ),
        //                           Padding(
        //                             padding: EdgeInsets.all(8.0),
        //                             child: Icon(
        //                               Icons.mode_comment_outlined,
        //                               color: Colors.white,
        //                             ),
        //                           ),
        //                           Padding(
        //                             padding: EdgeInsets.all(8.0),
        //                             child:
        //                                 Icon(Icons.send, color: Colors.white),
        //                           ),
        //                           Expanded(
        //                             child: Padding(
        //                               padding: EdgeInsets.all(8),
        //                               child: Icon(Icons.more_vert,
        //                                   color: Colors.white),
        //                             ),
        //                           ),
        //                         ],
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //               ],
        //             );
        //           },
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
