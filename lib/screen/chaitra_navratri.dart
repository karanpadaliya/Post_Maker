import 'package:fastival_app/screen/post_maker_page.dart';
import 'package:fastival_app/screen/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChaitreNavratriPage extends StatefulWidget {
  const ChaitreNavratriPage({super.key});

  @override
  State<ChaitreNavratriPage> createState() => _ChaitreNavratriPageState();
}

class _ChaitreNavratriPageState extends State<ChaitreNavratriPage> {
  bool isList = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      appBar: AppBar(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        foregroundColor: Colors.white,
        title: Text(
          "Chaitre-Navratri Day",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
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
      body: ScrollbarTheme(
        data: ScrollbarThemeData(
          trackColor: MaterialStatePropertyAll(Colors.white),
          trackVisibility: MaterialStatePropertyAll(true),
          thickness: MaterialStatePropertyAll(5),
        ),
        child: Scrollbar(
          radius: Radius.circular(50),
          child: isList
              ? GridView.builder(
                  itemCount: chaitraNavratri_imgList.length,
                  padding: EdgeInsets.all(10),
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PostMakerPage(
                              chaitraNavratri_imgList[index],
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.network(chaitraNavratri_imgList[index]),
                      ),
                    );
                  },
                )
              : ListView.builder(
                  itemCount: chaitraNavratri_imgList.length,
                  padding: EdgeInsets.all(10),
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PostMakerPage(
                              chaitraNavratri_imgList[index],
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
                          child: Image.network(chaitraNavratri_imgList[index]),
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
