import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';

class ProfileData {
  //profile Data
  String? gallery;
  String? camera;

  String? companyName;
  String? yourName;
  String? mobileNo;
  String? emailAddress;
  String? website;
  String? businessAddress;

  String? xFile;
}

List<String> profileDetails = [
];

List<Map> upcomingDays_imgList = [
  {
    "img":
    "https://drive.google.com/uc?export=view&id=1S4-AK95ioEaC3tLkZ9EcsMAPTa8FeW0l",
    "day": "9-APR",
//chaitraNavratri_imgList
  },
  {
    "img":
    "https://drive.google.com/uc?export=view&id=1ZTh7c4946sDD5PQIrOxmwcW8XEAluCNE",
    "day": "9-APR",
//drBR_Ambedkar_jayanti_imgList
  },
  {
    "img":
    "https://drive.google.com/uc?export=view&id=15sedslZGVA8Kx63QqlN9m86ii_tJsmS8",
    "day": "9-APR",
//chaitraNavratri_imgList
  },
  {
    "img":
    "https://drive.google.com/uc?export=view&id=1dgEUyewJkmdZ4E4u0MvEf7Ueo86GE_vl",
    "day": "9-APR",
//drBR_Ambedkar_jayanti_imgList
  },
  {
    "img":
    "https://drive.google.com/uc?export=view&id=1MXONc25CEhKLIClmpegK5kF0RO6lslWT",
    "day": "9-APR",
//chaitraNavratri_imgList
  },
  {
    "img":
    "https://drive.google.com/uc?export=view&id=1m7Pozq8pw56r7RoZ2TK6MkDQgh6hACou",
    "day": "9-APR",
//chaitraNavratri_imgList
  },
  {
    "img":
    "https://drive.google.com/uc?export=view&id=1ABkzXF3bE7qX5wxqRKqHpafqbX6U5Lkr",
    "day": "9-APR",
//chaitraNavratri_imgList
  },
];

List<String> imgList = [
  "https://t3.ftcdn.net/jpg/06/80/59/22/240_F_680592284_vrPfc4XoN5qNQrglRTUq6jSRYMSITe1j.jpg",
  "https://t3.ftcdn.net/jpg/06/58/66/44/240_F_658664405_wpyvdrOTz7bkXMu0Et6yghSGXSbetOJr.jpg",
  "https://t4.ftcdn.net/jpg/06/07/63/93/240_F_607639390_etp901wefYfw9ZM7t4boQFyLGVjqL00F.jpg",
  "https://t3.ftcdn.net/jpg/06/02/88/04/240_F_602880464_XAEd9P4Gop32xUHYp4SaxzX1k2s7Zgkt.jpg",
  "https://t4.ftcdn.net/jpg/07/58/62/91/240_F_758629118_97bYr1ErNqK20LLEkNbVjeAWC2mdN2GC.jpg",
  "https://t4.ftcdn.net/jpg/04/96/57/09/240_F_496570938_wLDb0QuqWJ4MbURBuJzAyLrSoE2bNe8q.jpg",
  "https://t3.ftcdn.net/jpg/07/54/78/28/240_F_754782818_2qi2ggCm8tkpXOy3eJCZDxN9Z5ZCidP2.jpg",
];

List<String> chaitraNavratri_imgList = [
  "https://drive.google.com/uc?export=view&id=1S4-AK95ioEaC3tLkZ9EcsMAPTa8FeW0l",
  "https://drive.google.com/uc?export=view&id=15sedslZGVA8Kx63QqlN9m86ii_tJsmS8",
  "https://drive.google.com/uc?export=view&id=1MXONc25CEhKLIClmpegK5kF0RO6lslWT",
  "https://drive.google.com/uc?export=view&id=1m7Pozq8pw56r7RoZ2TK6MkDQgh6hACou",
  "https://drive.google.com/uc?export=view&id=1ABkzXF3bE7qX5wxqRKqHpafqbX6U5Lkr",
  "https://drive.google.com/uc?export=view&id=1aZxU_YkDWPYLpgmax2RYrnTtRdgH_TuX",
  "https://drive.google.com/uc?export=view&id=1eGTYnueSmCZIRbOrFgLXpdyd_zlpcOIi",
  "https://drive.google.com/uc?export=view&id=11COnl9pmAsAA2anoUmCnFiWpEG7ag5zb",
  "https://drive.google.com/uc?export=view&id=1C2BbXpxgRckbOwQJris2ngrqzpsLuJW9",
  "https://drive.google.com/uc?export=view&id=1MuDiy3j4gtZYUEz2isvaYWT3PoWXM3AQ",
];

List<String> drBR_Ambedkar_jayanti_imgList = [
  "https://drive.google.com/uc?export=view&id=1n5dI1EECH7-5RY4fAWGYOj30WqQHP80C",
  "https://drive.google.com/uc?export=view&id=1wHRUx7ma10weTfVomzM0fmsoPYm-CDxQ",
  "https://drive.google.com/uc?export=view&id=1P_sJuFyf2f5h0rglX5V1--diB946EHbE",
  "https://drive.google.com/uc?export=view&id=1mfpbgaabSaFQFgPgKMivMyrStO-es2Ak",
  "https://drive.google.com/uc?export=view&id=1unWVFDHyC6NzMwx7UvT6HP7pesGVCy_L",
  "https://drive.google.com/uc?export=view&id=1dgEUyewJkmdZ4E4u0MvEf7Ueo86GE_vl",
  "https://drive.google.com/uc?export=view&id=15uStsLILuVqfhvIxpSKis4zF2uoa1LQc",
  "https://drive.google.com/uc?export=view&id=1ZTh7c4946sDD5PQIrOxmwcW8XEAluCNE",
  "https://drive.google.com/uc?export=view&id=1v6156PQyaOQnVTic8RGc-2IaLR6WYhYM",
  "https://drive.google.com/uc?export=view&id=11PNvRu8xqlFxPBm71QRnnByOrYPNwS-n",
];

List<String> categories_imgList = [
  "https://t3.ftcdn.net/jpg/06/80/59/22/240_F_680592284_vrPfc4XoN5qNQrglRTUq6jSRYMSITe1j.jpg",
  "https://t3.ftcdn.net/jpg/06/58/66/44/240_F_658664405_wpyvdrOTz7bkXMu0Et6yghSGXSbetOJr.jpg",
  "https://t4.ftcdn.net/jpg/06/07/63/93/240_F_607639390_etp901wefYfw9ZM7t4boQFyLGVjqL00F.jpg",
  "https://t3.ftcdn.net/jpg/06/02/88/04/240_F_602880464_XAEd9P4Gop32xUHYp4SaxzX1k2s7Zgkt.jpg",
  "https://t4.ftcdn.net/jpg/07/58/62/91/240_F_758629118_97bYr1ErNqK20LLEkNbVjeAWC2mdN2GC.jpg",
  "https://t4.ftcdn.net/jpg/04/96/57/09/240_F_496570938_wLDb0QuqWJ4MbURBuJzAyLrSoE2bNe8q.jpg",
  "https://t3.ftcdn.net/jpg/07/54/78/28/240_F_754782818_2qi2ggCm8tkpXOy3eJCZDxN9Z5ZCidP2.jpg",
];

List<String> fontStyle = [

  "Rubik",
  "BebasNeue",
  "Caveat",
  "ChakraPetch",
  "DancingScript",
  "IndieFlower",
  "Jersey20",
  "Jersey20Charted",
  "JosefinSans",
  "Lugrasimo",
  "Pacifico",
  "Poppins",
  "Roboto",
  "RobotoSlab",
  "Satisfy",
  "TitilliumWeb",
];

List<Color> fontColor = [
  Colors.black,
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.brown,
  Colors.grey,
  Colors.indigo,
  Colors.amber,
  Colors.deepOrange,
  Colors.deepPurple,
  Colors.lightBlue,
  Colors.lightGreen,
  Colors.lime,
  Colors.deepOrangeAccent,
  Colors.deepPurpleAccent,
  Colors.lightBlueAccent,
  Colors.lightGreenAccent,
  Colors.limeAccent,
  Colors.amberAccent,
  Colors.cyanAccent,
  Colors.indigoAccent,
  Colors.orangeAccent,
];

Uint8List? savedImg;
