import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostMakerPage extends StatefulWidget {
  final String chaitraNavratri_imgList;

  PostMakerPage(this.chaitraNavratri_imgList, {Key? key}) : super(key: key);

  @override
  State<PostMakerPage> createState() => _PostMakerPageState();
}

class _PostMakerPageState extends State<PostMakerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.darkBackgroundGray,
      appBar: AppBar(
        title: Text(
          "Edit Post",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Image.network(widget.chaitraNavratri_imgList),
          Padding(
            padding: const EdgeInsets.only(top: 415),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Font",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
