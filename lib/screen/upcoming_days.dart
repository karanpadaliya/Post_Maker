import 'package:fastival_app/screen/post_maker_page.dart';
import 'package:fastival_app/screen/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpComingDaysPage extends StatefulWidget {
  const UpComingDaysPage({super.key});

  @override
  State<UpComingDaysPage> createState() => _UpComingDaysPageState();
}

class _UpComingDaysPageState extends State<UpComingDaysPage> {

  bool isList = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      appBar: AppBar(
        title: Text(
          "Upcoming Days",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                isList = !isList;
                setState(() {});
              },
              child: isList ? Icon(Icons.grid_on) : Icon(Icons.list),
            ),
          ),
        ],
      ),
      body: isList ? GridView.builder(
        itemCount: upcomingDays_imgList.length,
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          // childAspectRatio: 3,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PostMakerPage(
                    upcomingDays_imgList[index]["img"],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network(upcomingDays_imgList[index]["img"]),
            ),
          );
        },
      ) : ListView.builder(
        itemCount: upcomingDays_imgList.length,
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PostMakerPage(
                    upcomingDays_imgList[index]["img"],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                // color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(upcomingDays_imgList[index]["img"]),
              ),
            ),
          );
        },
      ),
    );
  }
}
