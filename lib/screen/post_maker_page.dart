import 'dart:math';
import 'package:fastival_app/screen/dataPage.dart';
import 'package:fastival_app/screen/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostMakerPage extends StatefulWidget {
  final String chaitraNavratri_imgList;

  PostMakerPage(this.chaitraNavratri_imgList, {Key? key}) : super(key: key);

  @override
  State<PostMakerPage> createState() => _PostMakerPageState();
}

class _PostMakerPageState extends State<PostMakerPage> {
  bool isCompanyName = false;
  bool isLogo = false;
  bool isYourName = false;
  bool isMobileNo = false;
  bool isEmailAddress = false;
  bool isWebsite = false;
  bool isBusinessAddress = false;

  double leftCompanyName = 0.0, topCompanyName = 0.0;
  double leftLog = 0.0, topLog = 0.0;
  double leftYourName = 0.0, topYourName = 0.0;
  double leftMobileNo = 0.0, topMobileNo = 0.0;
  double leftEmailAddress = 0.0, topEmailAddress = 0.0;
  double leftWebsite = 0.0, topWebsite = 0.0;
  double leftBusinessAddress = 0.0, topBusinessAddress = 0.0;

  String? companyNameFont,
      yourNameFont,
      mobileNoFont,
      emailAddressFont,
      websiteFont,
      businessAddressFont;

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
          Container(
            color: Colors.yellow,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                children: [
                  Image.network(widget.chaitraNavratri_imgList),
                  // Text("This is Stack"),

                  //Business Address
                  Container(
                    child: isBusinessAddress
                        ? Positioned(
                            left: leftBusinessAddress,
                            top: topBusinessAddress,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                leftBusinessAddress = max(
                                    0, leftBusinessAddress + details.delta.dx);
                                topBusinessAddress = max(
                                    0, topBusinessAddress + details.delta.dy);
                                setState(() {});
                              },
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.receipt,
                                    size: 24,
                                    color: Colors.indigo,
                                  ),
                                  Text(
                                    profiledata.businessAddress.toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: businessAddressFont,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Text("BlankBusinessAddress"),
                  ),

                  //Website
                  Container(
                    child: isWebsite
                        ? Positioned(
                            left: leftWebsite,
                            top: topWebsite,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                leftWebsite =
                                    max(0, leftWebsite + details.delta.dx);
                                topWebsite =
                                    max(0, topWebsite + details.delta.dy);
                                setState(() {});
                              },
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.language_outlined,
                                    size: 24,
                                    color: Colors.brown,
                                  ),
                                  Text(
                                    profiledata.website.toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: websiteFont,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Text("BlankWebsite"),
                  ),

                  //EmailAddress
                  Container(
                    child: isEmailAddress
                        ? Positioned(
                            left: leftEmailAddress,
                            top: topEmailAddress,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                leftEmailAddress =
                                    max(0, leftEmailAddress + details.delta.dx);
                                topEmailAddress =
                                    max(0, topEmailAddress + details.delta.dy);
                                setState(() {});
                              },
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.email_outlined,
                                    size: 24,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    profiledata.emailAddress.toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: emailAddressFont,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Text("BlankEmailAddress"),
                  ),

                  //Mobile No
                  Container(
                    child: isMobileNo
                        ? Positioned(
                            left: leftMobileNo,
                            top: topMobileNo,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                leftMobileNo =
                                    max(0, leftMobileNo + details.delta.dx);
                                topMobileNo =
                                    max(0, topMobileNo + details.delta.dy);
                                setState(() {});
                              },
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.phone_android,
                                    size: 24,
                                    color: Colors.orangeAccent,
                                  ),
                                  Text(
                                    profiledata.mobileNo.toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: mobileNoFont,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Text("BlankMonileNo"),
                  ),

                  //Your Name
                  Container(
                    child: isYourName
                        ? Positioned(
                            left: leftYourName,
                            top: topYourName,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                leftYourName =
                                    max(0, leftYourName + details.delta.dx);
                                topYourName =
                                    max(0, topYourName + details.delta.dy);
                                setState(() {});
                              },
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: 24,
                                    color: Colors.indigo,
                                  ),
                                  Text(
                                    profiledata.yourName.toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: yourNameFont,
                                      color: Colors.indigo,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Text("BlankYourName"),
                  ),

                  //Company Name
                  Container(
                    // color: Colors.white,
                    child: isCompanyName
                        ? Positioned(
                            left: leftCompanyName,
                            top: topCompanyName,
                            child: GestureDetector(
                              onPanUpdate: (details) {
                                leftCompanyName =
                                    max(0, leftCompanyName + details.delta.dx);
                                topCompanyName =
                                    max(0, topCompanyName + details.delta.dy);
                                setState(() {});
                              },
                              onTap: () {},
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.factory_outlined,
                                    size: 24,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    profiledata.companyName.toString(),
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: companyNameFont,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Text("BlankComapnyName"),
                  ),
                ],
              ),
            ),
          ),
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
                      padding:
                          const EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ElevatedButton(
                                  onLongPress: () {
                                    isCompanyName = false;
                                    setState(() {});
                                  },
                                  onPressed: () {
                                    isCompanyName = true;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Company Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: CupertinoColors.darkBackgroundGray,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  onLongPress: () {
                                    isYourName = false;
                                    setState(() {});
                                  },
                                  onPressed: () {
                                    isYourName = true;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Your Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: CupertinoColors.darkBackgroundGray,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  onLongPress: () {
                                    isMobileNo = false;
                                    setState(() {});
                                  },
                                  onPressed: () {
                                    isMobileNo = true;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Mobile No",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: CupertinoColors.darkBackgroundGray,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  onLongPress: () {
                                    isEmailAddress = false;
                                    setState(() {});
                                  },
                                  onPressed: () {
                                    isEmailAddress = true;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Email Address",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: CupertinoColors.darkBackgroundGray,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  onLongPress: () {
                                    isWebsite = false;
                                    setState(() {});
                                  },
                                  onPressed: () {
                                    isWebsite = true;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Website",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: CupertinoColors.darkBackgroundGray,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ElevatedButton(
                                  onLongPress: () {
                                    isBusinessAddress = false;
                                    setState(() {});
                                  },
                                  onPressed: () {
                                    isBusinessAddress = true;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Business Address",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: CupertinoColors.darkBackgroundGray,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Font Style",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: fontStyle.map((index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, left: 0, right: 8),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      companyNameFont = index;
                                      yourNameFont = index;
                                      mobileNoFont = index;
                                      emailAddressFont = index;
                                      websiteFont = index;
                                      businessAddressFont = index;
                                      setState(() {});
                                    },
                                    child: Text(
                                      index,
                                      style: TextStyle(
                                        color:
                                            CupertinoColors.darkBackgroundGray,
                                        fontSize: 17,
                                        fontFamily: index,
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
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
