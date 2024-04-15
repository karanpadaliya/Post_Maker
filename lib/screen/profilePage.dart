import 'dart:io';

import 'package:fastival_app/screen/dataPage.dart';
import 'package:fastival_app/screen/util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// Inside your ProfilePage class
class ProfilePage extends StatefulWidget {

  String? xFile;

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  TextEditingController companyNameController = TextEditingController(text: profiledata.companyName);
  TextEditingController yourNameController = TextEditingController(text: profiledata.yourName);
  TextEditingController mobileNoController = TextEditingController(text: profiledata.mobileNo);
  TextEditingController emailAddressController = TextEditingController(text: profiledata.emailAddress);
  TextEditingController websiteController = TextEditingController(text: profiledata.website);
  TextEditingController businessAddressController = TextEditingController(text: profiledata.businessAddress);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: CupertinoColors.darkBackgroundGray,
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Text(
                    "Complete Your Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 2,
                      letterSpacing: 1,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      "Add a profile photo, name and bio to let\n\t\t\t\t\t\t\t\t\t\t\t\tpeople know who are you",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
//===============>  Add Logo
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 150),
            child: InkWell(
              onTap: () {
                _addLogo(context, () {
                  setState(() {});
                });
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Color(0xfff4f4f4),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    width: 1.5,
                    color: Colors.black,
                  ),
                ),
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xfff4f4f4),
                  backgroundImage: FileImage(
                    File(profiledata.xFile ?? ""),
                  ),
                ),
              ),
            ),
          ),

//================> camera logo
          Padding(
            padding: const EdgeInsets.only(top: 220, left: 215),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.camera_enhance_sharp,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),

//================> customer info
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Company Name
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Company Name",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 400,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: companyNameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.factory_outlined),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  //Your Name
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Your Name",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 400,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: yourNameController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // Phone Number
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Mobile Number",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 400,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: mobileNoController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android_outlined),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // Email Address
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 400,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: emailAddressController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // Website
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Website",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 400,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: websiteController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.language),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  // Business address
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 5),
                    child: Text(
                      "Business Address",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 42,
                    width: 400,
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: businessAddressController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.receipt),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 800,
            ),
            child: InkWell(
              onTap: (){
                String companyName = companyNameController.text;
                profiledata.companyName = companyName;

                String yourName = yourNameController.text;
                profiledata.yourName = yourName;

                String mobileNumber = mobileNoController.text;
                profiledata.mobileNo = mobileNumber;

                String emailAddress = emailAddressController.text;
                profiledata.emailAddress = emailAddress;

                String website = websiteController.text;
                profiledata.website = website;

                String businessAddress = businessAddressController.text;
                profiledata.businessAddress = businessAddress;

                Navigator.pushReplacementNamed(context, "HomePage");
              },
              child: Container(
                height: 70,
                width: 412,
                color: Colors.black,
                child: Center(
                  child: Text(
                    "PROCEED",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addLogo(BuildContext context, VoidCallback callback) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20, left: 0),
            child: Text(
              'Upload Business Logo',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () async {
                  XFile? file = await ImagePicker()
                      .pickImage(source: ImageSource.gallery);
                  profiledata.xFile = file?.path ?? "No Find Path";
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Text(
                  "Gallery",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () async {
                  XFile? file =
                      await ImagePicker().pickImage(source: ImageSource.camera);
                  profiledata.xFile = file?.path ?? "";
                  Navigator.pop(context);
                  setState(() {});
                },
                child: Text(
                  "Camera",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

// Modified _addLogo function
