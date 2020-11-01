import 'package:eccomerce_foem_maraj_vai/model/data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Mowshomifol> mowshomifol = [
      Mowshomifol(
        name: "Cabbage",
        imageUrl: "assets/images/download.jpg",
      ),
      Mowshomifol(
        name: "Cabbage",
        imageUrl: "assets/images/Fulkopi.jpg",
      ),
      Mowshomifol(
        name: "Cabbage",
        imageUrl: "assets/images/unnamed.jpg",
      ),
      Mowshomifol(
        name: "Cabbage",
        imageUrl: "assets/images/download.jpg",
      ),
      Mowshomifol(
        name: "Cabbage",
        imageUrl: "assets/images/Fulkopi.jpg",
      ),
      Mowshomifol(
        name: "Cabbage",
        imageUrl: "assets/images/unnamed.jpg",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "এ আর মালিক সিডস প্রাঃ লিঃ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.vpn_key, color: Colors.white),
            onPressed: () {},
          ),
          SizedBox(
            width: 3,
          ),
        ],
      ),
      drawer: Drawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/daily_sun_Vegetables-Bangladesh_picture.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        child: Container(
                          alignment: Alignment.center,
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black45,
                          child: Text(
                            "এ আর মালিক সিডস প্রাঃ লিঃ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "রেজিস্ট্রেশন",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 110,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildRegistersOptions(),
                      buildRegistersOptions(),
                      buildRegistersOptions(),
                      buildRegistersOptions(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "মুউশমি ফল",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 145,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: mowshomifol.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildowshomiFal();
                    },
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "ফসলের তথ্য এবং ক্রয় ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    height: 210,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            buildFosholJatKoron(),
                            buildFosholJatKoron(),
                            buildFosholJatKoron(),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            buildFosholJatKoron(),
                            buildFosholJatKoron(),
                            buildFosholJatKoron(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector buildowshomiFal() {
    return GestureDetector(
      onTap: () {
        print("1");
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/unnamed.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.green,
                ),
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 100,
              color: Colors.green,
              child: Text(
                "রিটেইলার",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRegistersOptions() {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print("1");
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              Container(
                height: 70,
                width: 95,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                  ),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.people,
                  color: Colors.blue,
                  size: 65,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 30,
                width: 95,
                color: Colors.green,
                child: Text(
                  "রিটেইলার",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFosholJatKoron() {
    return GestureDetector(
      onTap: () {
        print("1");
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            Container(
              height: 90,
              width: 120,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Fulkopi.jpg",
                    height: 60,
                    width: 60,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "ফসল ক্রয়",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
