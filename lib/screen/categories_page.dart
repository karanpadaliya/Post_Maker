import 'package:fastival_app/screen/util.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),),
      ),
      body: GridView.builder(
        itemCount: categories_imgList.length,
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
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
    );
  }
}
