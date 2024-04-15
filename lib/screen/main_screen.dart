import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: CupertinoColors.darkBackgroundGray,
                  child: Center(
                    child: Text(
                      "Post Maker",
                      style: TextStyle(
                        color: CupertinoColors.extraLightBackgroundGray,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, "ProfilePage");
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: CupertinoColors.darkBackgroundGray,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 24,
                          color: CupertinoColors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5,left: 6),
                        child: Icon(
                          Icons.arrow_right_outlined,
                          size: 25,
                          color: CupertinoColors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
