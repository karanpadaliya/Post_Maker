import 'dart:io';

import 'package:fastival_app/screen/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class SaveImage extends StatefulWidget {
  const SaveImage({super.key});

  @override
  State<SaveImage> createState() => _SaveImageState();
}

class _SaveImageState extends State<SaveImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Save Image",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: CupertinoColors.darkBackgroundGray,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          savedImg != null ? Image.memory(savedImg!) : Text("Not Save"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CupertinoColors.darkBackgroundGray,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    ),
                    onPressed: () async {
                      Directory add = await getApplicationDocumentsDirectory();
                      String myFilePath = "${add.path}/post.png";

                      File file = File(myFilePath);
                      if (savedImg != null) {
                        await file.writeAsBytes(savedImg!);
                        print(file.path);
                        Share.shareXFiles(
                          [
                            XFile(file.path),
                          ],
                        );
                      }
                    },
                    child: Icon(Icons.share),
                    // icon: Icon(Icons.share),
                    // label: Text("Share"),
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CupertinoColors.darkBackgroundGray,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    ),
                    onPressed: () async {
                      Directory add = await getApplicationDocumentsDirectory();
                      String myFilePath = "${add.path}/post.png";
                      print(myFilePath);

                      File file = File(myFilePath);
                      if (savedImg != null) {
                        await file.writeAsBytes(savedImg!);
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text("Success")));
                      }
                    },
                    child: Icon(Icons.download),
                  ),
                  Text(
                    "Download",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: CupertinoColors.darkBackgroundGray,
                      foregroundColor: Colors.white,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: CupertinoColors.darkBackgroundGray),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    ),
                    onPressed: () {
                      _showFeedbackDialog(context);
                    },
                    child: Icon(Icons.feedback_rounded),
                  ),
                  Text(
                    "Feedback",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _showFeedbackDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      double _rating = 0;

      return AlertDialog(
        title: Text("Feedback"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("We would love to hear your feedback!"),
            RatingBar.builder(
              initialRating: _rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 30,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: CupertinoColors.systemRed,
              ),
              onRatingUpdate: (rating) {
                _rating = rating;
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your feedback here",
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Cancel",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Submit",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      );
    },
  );
}
