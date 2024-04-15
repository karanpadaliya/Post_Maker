import 'package:fastival_app/screen/categories_page.dart';
import 'package:fastival_app/screen/chaitra_navratri.dart';
import 'package:fastival_app/screen/dr_b_r_ambedkar_page.dart';
import 'package:fastival_app/screen/homePage.dart';
import 'package:fastival_app/screen/main_screen.dart';
import 'package:fastival_app/screen/post_maker_page.dart';
import 'package:fastival_app/screen/profilePage.dart';
import 'package:fastival_app/screen/upcoming_days.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
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