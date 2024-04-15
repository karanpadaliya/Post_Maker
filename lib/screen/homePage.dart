import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fastival_app/screen/post_maker_page.dart';
import 'package:fastival_app/screen/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

void initState() {}

class _HomePageState extends State<HomePage> {
  String? bgImg;

  //for Slider
  List imageList = [
    {"id": 1, "image_path": 'assets/images/slider_Image/img1.gif'},
    {"id": 2, "image_path": 'assets/images/slider_Image/img2.gif'},
    {"id": 3, "image_path": 'assets/images/slider_Image/img3.jpg'},
    {"id": 4, "image_path": 'assets/images/slider_Image/img4.jpg'},
    {"id": 5, "image_path": 'assets/images/slider_Image/img5.jpg'},
    {"id": 6, "image_path": 'assets/images/slider_Image/img6.jpg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: CupertinoColors.label,
        systemNavigationBarColor: CupertinoColors.label,
        systemNavigationBarDividerColor: CupertinoColors.label,
      ),
    );
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    return Scaffold(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      appBar: AppBar(
        backgroundColor: CupertinoColors.label,
        foregroundColor: CupertinoColors.systemGroupedBackground,
        title: Text(
          "Post Maker",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w600,
            wordSpacing: 2,
            letterSpacing: 1,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "ProfilePage");
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_circle,
                size: 32,
              ),
            ),
          ),
        ],
        // elevation: 1,
      ),
      body: Stack(
        children: [
          //search box
          Container(
            width: double.infinity,
            color: CupertinoColors.black,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 30, bottom: 30, right: 30),
              child: Container(
                height: 50,
                width: 350,
                padding: EdgeInsets.only(left: 7, right: 12),
                decoration: BoxDecoration(
                  color: CupertinoColors.extraLightBackgroundGray,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),

          //slider images
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.label,
                // borderRadius: BorderRadius.only(
                //   bottomRight: Radius.circular(30),
                //   bottomLeft: Radius.circular(30),
                // ),
              ),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIndex);
                    },
                    child: CarouselSlider(
                      items: imageList
                          .map(
                            (item) => Image.asset(
                              item['image_path'],
                              // fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 2,
                        viewportFraction: 1,
                        onPageChanged: (index, reson) {
                          setState(
                            () {
                              currentIndex = index;
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map(
                        (entry) {
                          return GestureDetector(
                            onTap: () =>
                                carouselController.animateToPage(entry.key),
                            child: Container(
                              width: currentIndex == entry.key ? 17 : 7,
                              height: 7.0,
                              margin: const EdgeInsets.symmetric(
                                horizontal: 3.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.red
                                    : Colors.white,
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //bottom Container
          Padding(
            padding: const EdgeInsets.only(top: 330),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Upcoming Days
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Upcoming Days",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "UpComingDaysPage");
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.link,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: upcomingDays_imgList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              bgImg = upcomingDays_imgList[index]["img"];
                              // Navigator.pushNamed(context, "UpComingDaysPage");
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PostMakerPage(
                                    upcomingDays_imgList[index]["img"],
                                  ),
                                ),
                              );
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Image.network(
                                    upcomingDays_imgList[index]["img"],
                                    width: 140,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 110,left: 90),
                                    child: Container(
                                      height: 25,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: CupertinoColors.link.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "${upcomingDays_imgList[index]["day"]}",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    //Navratri Days
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Chaitra Navratri",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, "ChaitreNavratriPage");
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.link,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: chaitraNavratri_imgList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              bgImg = chaitraNavratri_imgList[index];
                              // Navigator.pushNamed(context, "ChaitreNavratriPage");
                              setState(() {});
                              // Navigator.pushNamed(context, "PostMakerPage");
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PostMakerPage(
                                    chaitraNavratri_imgList[index],
                                  ),
                                ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                chaitraNavratri_imgList[index],
                                width: 140,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    //Dr. B.R. Ambedkar Jayanti Days
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Dr. B.R. Ambedkar Jayanti",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, "Dr_BR_Ambedkar_Page");
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.link,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: drBR_Ambedkar_jayanti_imgList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              bgImg = drBR_Ambedkar_jayanti_imgList[index];
                              // Navigator.pushNamed(context, "Dr_BR_Ambedkar_Page");
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => PostMakerPage(
                                    drBR_Ambedkar_jayanti_imgList[index],
                                  ),
                                ),
                              );
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                drBR_Ambedkar_jayanti_imgList[index],
                                width: 140,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    //Categories
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "CategoriesPage");
                            },
                            child: Text(
                              "See all",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.link,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: GridView.builder(
                        itemCount: imgList.length,
                        padding: EdgeInsets.all(10),
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          // childAspectRatio: 3,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            color: Colors.white,
                            child: Image.network(imgList[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
