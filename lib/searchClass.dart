import 'package:flutter/material.dart';

//search class
class searchClass extends StatefulWidget {
  const searchClass({Key? key}) : super(key: key);

  @override
  State<searchClass> createState() => _searchClassState();
}

// ...

class _searchClassState extends State<searchClass> {
  final TextEditingController _textEditingController = TextEditingController();
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
  List suggestedPosts = [
    "https://cdn.pixabay.com/photo/2017/07/31/11/21/people-2557396_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/09/14/18/04/dandelion-445228_960_720.jpg",
    "https://cdn.pixabay.com/photo/2023/07/04/17/28/red-squirrel-8106699_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/07/11/15/43/pretty-woman-1509956_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/02/13/12/26/aurora-1197753_960_720.jpg",
    // "https://cdn.pixabay.com/photo/2016/04/18/22/05/seashells-1337565_1280.jpg",
    // // " https://cdn.pixabay.com/photo/2016/10/21/14/50/plouzane-1758197_1280.jpg",
    // "https://cdn.pixabay.com/photo/2015/12/09/01/02/mandalas-1084082_1280.jpg ",
    // "https://cdn.pixabay.com/photo/2018/08/15/13/10/galaxy-3608029_1280.jpg",
    // "https://cdn.pixabay.com/photo/2017/08/30/12/45/girl-2696947_1280.jpg",
    // // "https://cdn.pixabay.com/photo/2016/06/06/17/05/woman-1439909_1280.jpg",
    // "https://cdn.pixabay.com/photo/2022/11/29/19/10/poppy-7625142_1280.jpg",
    // "https://cdn.pixabay.com/photo/2023/06/28/11/25/man-8094211_1280.jpg",
    // "https://cdn.pixabay.com/photo/2023/05/03/12/40/bird-7967570_640.jpg",
    // "https://cdn.pixabay.com/photo/2023/05/05/18/26/child-7972995_640.jpg",
    // // "https://cdn.pixabay.com/photo/2023/06/25/13/19/woman-8087286_640.jpg",
    // // "https://cdn.pixabay.com/photo/2023/05/23/09/29/woman-8012332_640.jpg ",
    // "https://cdn.pixabay.com/photo/2023/07/03/07/23/man-8103516_640.jpg",
    // "https://cdn.pixabay.com/photo/2018/07/06/19/48/charles-chaplin-3521070_640.jpg ",
    // "https://cdn.pixabay.com/photo/2016/11/08/05/40/actor-1807557_640.jpg",
    // "https://cdn.pixabay.com/photo/2023/05/04/20/37/colourful-7971057_640.jpg",
    // "https://cdn.pixabay.com/photo/2023/06/26/04/57/birce-akalay-8088709_640.jpg",
    // "https://cdn.pixabay.com/photo/2016/11/08/05/15/ramayana-festival-1807516_640.jpg",
    // // "https://cdn.pixabay.com/photo/2023/06/12/09/58/woman-8058087_640.jpg",
    // "https://cdn.pixabay.com/photo/2023/06/15/14/29/soniya-bansal-8065649_640.jpg ",
    // "https://cdn.pixabay.com/photo/2018/10/20/13/22/sword-3760780_640.jpg",
    // "https://cdn.pixabay.com/photo/2023/05/26/06/51/martial-8018866_640.jpg",
    // "https://cdn.pixabay.com/photo/2019/11/28/21/31/lynx-4660096_640.jpg",
    // "https://cdn.pixabay.com/photo/2022/11/30/07/26/man-7626092_640.jpg",
    // "https://cdn.pixabay.com/photo/2018/05/01/07/55/boy-3364927_640.jpg",
    // "https://cdn.pixabay.com/photo/2023/04/16/05/51/clown-7929127_640.jpg",
    // "https://cdn.pixabay.com/photo/2023/05/31/09/57/skyscraper-8030987_640.jpg",
    // "https://cdn.pixabay.com/photo/2022/12/18/19/30/christmas-7664112_640.jpg",
    // "https://cdn.pixabay.com/photo/2022/06/30/14/31/jellyfish-7293778_640.jpg",
    // "https://cdn.pixabay.com/photo/2022/04/01/20/37/moon-7105626_640.jpg",
    // "https://cdn.pixabay.com/photo/2022/07/06/03/41/business-7304257_640.jpg",
    // "https://cdn.pixabay.com/photo/2022/04/06/20/54/man-7116367_640.jpg",
    // "https://cdn.pixabay.com/photo/2021/07/22/01/01/parrot-6484206_640.jpg",
    // "https://cdn.pixabay.com/photo/2021/06/10/22/43/jellyfish-6327182_640.jpg",
    // "https://cdn.pixabay.com/photo/2021/02/06/07/02/laptop-5987093_640.jpg",
    // "https://cdn.pixabay.com/photo/2020/03/16/06/39/sunset-4935922_640.jpg",
    // "https://cdn.pixabay.com/photo/2020/11/06/07/42/girl-5717067_640.jpg",
  ];
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
      // body: Padding(
      //   padding: const EdgeInsets.all(1.0),
      //   child: Expanded(
      //     // color: Colors.cyan,
      //     child: GridView.builder(
      //       gridDelegate:
      //           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      //       itemBuilder: (BuildContext context, int index) {
      //         return Column(
      //           children: [
      //             Image(
      //               image: NetworkImage(
      //                 suggestedPosts[index],
      //               ),
      //             ),
      //           ],
      //         );
      //       },
      //       itemCount: suggestedPosts.length,
      //     ),
      //   ),
      // ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                primary: false,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: List.generate(
                  suggestedPosts.length,
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
                                                // radius: 25,
                                                child: ClipOval(
                                                  child: Image(
                                                    fit: BoxFit.cover,
                                                    height: 100,
                                                    width: 100,
                                                    image: NetworkImage(
                                                      profileImages[index],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(
                                                  userNames[index],
                                                  style: const TextStyle(
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
                                        //displaying ontap images
                                        Container(
                                          color: Colors.black,
                                          width: double.infinity,
                                          height: 420,
                                          child: Image(
                                            height: double.infinity,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                              suggestedPosts[index],
                                            ),
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
                                              icon:
                                                  Icon(Icons.maps_ugc_outlined),
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
                      child: Image(
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          suggestedPosts[index],
                        ),
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
