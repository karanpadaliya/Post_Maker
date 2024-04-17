import 'package:fastival_app/screen/categories_page.dart';
import 'package:fastival_app/screen/chaitra_navratri.dart';
import 'package:fastival_app/screen/dr_b_r_ambedkar_page.dart';
import 'package:fastival_app/screen/homePage.dart';
import 'package:fastival_app/screen/main_screen.dart';
import 'package:fastival_app/screen/profilePage.dart';
import 'package:fastival_app/screen/save_image.dart';
import 'package:fastival_app/screen/searchPage.dart';
import 'package:fastival_app/screen/upcoming_days.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MainPage());
}


class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      initialRoute: "/",
      theme: ThemeData(
        fontFamily: "Rubik",
      ),
      routes: {
        "/": (context) => Main_Screen(),
        "HomePage": (context) => HomePage(),
        "ProfilePage": (context) => ProfilePage(),
        "UpComingDaysPage": (context) => UpComingDaysPage(),
        "ChaitreNavratriPage": (context) => ChaitreNavratriPage(),
        "Dr_BR_Ambedkar_Page": (context) => Dr_BR_Ambedkar_Page(),
        "CategoriesPage": (context) => CategoriesPage(),
        "SaveImage": (context) => SaveImage(),
        "SearchPage": (context) => SearchPage(),
        // "PostMakerPage": (context) => PostMakerPage(),
        // "invoice": (context) => AddInvoice(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text(
                "onUnknownRoute",
                style: TextStyle(fontSize: 50, color: Colors.black),
              ),
            ),
          ),
        );
      },
    );
  }
}