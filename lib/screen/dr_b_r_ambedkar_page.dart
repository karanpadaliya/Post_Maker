import 'package:fastival_app/screen/post_maker_page.dart';
import 'package:fastival_app/screen/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dr_BR_Ambedkar_Page extends StatefulWidget {

  @override
  State<Dr_BR_Ambedkar_Page> createState() => _Dr_BR_Ambedkar_PageState();
}

class _Dr_BR_Ambedkar_PageState extends State<Dr_BR_Ambedkar_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      appBar: AppBar(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        foregroundColor: Colors.white,
        title: Text("Dr. B.R. Ambedkar Jayanti",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),),
      ),
      body: GridView.builder(
        itemCount: drBR_Ambedkar_jayanti_imgList.length,
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
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PostMakerPage(
                    drBR_Ambedkar_jayanti_imgList[index],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.network(drBR_Ambedkar_jayanti_imgList[index]),
            ),
          );
        },
      ),
    );
  }
}
