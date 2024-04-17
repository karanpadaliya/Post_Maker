import 'package:fastival_app/screen/post_maker_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> _searchImg = [];

  @override
  void initState() {
    _searchImg = _allImgList;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runSearch(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allImgList;
    } else {
      results = _allImgList
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _searchImg = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 30, bottom: 10, right: 30),
              child: Container(
                height: 50,
                width: 350,
                padding: EdgeInsets.only(left: 7, right: 12),
                decoration: BoxDecoration(
                  color: CupertinoColors.extraLightBackgroundGray,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: TextFormField(
                  onChanged: (value) => _runSearch(value),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 25,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: _searchImg.isNotEmpty
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      // Change this value according to your grid layout
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.85,
                    ),
                    itemCount: _searchImg.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        // Navigate to another page when the image is clicked
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PostMakerPage(
                              _searchImg[index]['image'],
                            ),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 1,
                        margin: EdgeInsets.symmetric(vertical: 2),
                        child: Column(
                          children: [
                            Image.network(_searchImg[index]['image']),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              _searchImg[index]['name'],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search_off,
                        color: Colors.white,
                        size: 70,
                      ),
                      Text(
                        'No results found',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

//all Images list
final List<Map<String, dynamic>> _allImgList = [
  {
    "id": 1,
    "image":
        "https://drive.google.com/uc?export=view&id=1S4-AK95ioEaC3tLkZ9EcsMAPTa8FeW0l",
    "name": "Chaitra Navratri",
  },
  {
    "id": 2,
    "image":
        "https://drive.google.com/uc?export=view&id=15sedslZGVA8Kx63QqlN9m86ii_tJsmS8",
    "name": "Chaitra Navratri",
  },
  {
    "id": 3,
    "image":
        "https://drive.google.com/uc?export=view&id=1MXONc25CEhKLIClmpegK5kF0RO6lslWT",
    "name": "Chaitra Navratri",
  },
  {
    "id": 4,
    "image":
        "https://drive.google.com/uc?export=view&id=1m7Pozq8pw56r7RoZ2TK6MkDQgh6hACou",
    "name": "Chaitra Navratri",
  },
  {
    "id": 5,
    "image":
        "https://drive.google.com/uc?export=view&id=1ABkzXF3bE7qX5wxqRKqHpafqbX6U5Lkr",
    "name": "Chaitra Navratri",
  },
  {
    "id": 6,
    "image":
        "https://drive.google.com/uc?export=view&id=1aZxU_YkDWPYLpgmax2RYrnTtRdgH_TuX",
    "name": "Chaitra Navratri",
  },
  {
    "id": 7,
    "image":
        "https://drive.google.com/uc?export=view&id=1eGTYnueSmCZIRbOrFgLXpdyd_zlpcOIi",
    "name": "Chaitra Navratri",
  },
  {
    "id": 8,
    "image":
        "https://drive.google.com/uc?export=view&id=11COnl9pmAsAA2anoUmCnFiWpEG7ag5zb",
    "name": "Chaitra Navratri",
  },
  {
    "id": 9,
    "image":
        "https://drive.google.com/uc?export=view&id=1C2BbXpxgRckbOwQJris2ngrqzpsLuJW9",
    "name": "Chaitra Navratri",
  },
  {
    "id": 10,
    "image":
        "https://drive.google.com/uc?export=view&id=1MuDiy3j4gtZYUEz2isvaYWT3PoWXM3AQ",
    "name": "Chaitra Navratri",
  },
  {
    "id": 11,
    "image":
        "https://drive.google.com/uc?export=view&id=1n5dI1EECH7-5RY4fAWGYOj30WqQHP80C",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 12,
    "image":
        "https://drive.google.com/uc?export=view&id=1wHRUx7ma10weTfVomzM0fmsoPYm-CDxQ",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 13,
    "image":
        "https://drive.google.com/uc?export=view&id=1P_sJuFyf2f5h0rglX5V1--diB946EHbE",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 14,
    "image":
        "https://drive.google.com/uc?export=view&id=1mfpbgaabSaFQFgPgKMivMyrStO-es2Ak",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 15,
    "image":
        "https://drive.google.com/uc?export=view&id=1unWVFDHyC6NzMwx7UvT6HP7pesGVCy_L",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 16,
    "image":
        "https://drive.google.com/uc?export=view&id=1dgEUyewJkmdZ4E4u0MvEf7Ueo86GE_vl",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 17,
    "image":
        "https://drive.google.com/uc?export=view&id=15uStsLILuVqfhvIxpSKis4zF2uoa1LQc",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 18,
    "image":
        "https://drive.google.com/uc?export=view&id=1ZTh7c4946sDD5PQIrOxmwcW8XEAluCNE",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 19,
    "image":
        "https://drive.google.com/uc?export=view&id=1v6156PQyaOQnVTic8RGc-2IaLR6WYhYM",
    "name": "DR. BR Ambedkar",
  },
  {
    "id": 20,
    "image":
        "https://drive.google.com/uc?export=view&id=11PNvRu8xqlFxPBm71QRnnByOrYPNwS-n",
    "name": "DR. BR Ambedkar",
  },
];
