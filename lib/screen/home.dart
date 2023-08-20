import 'package:flutter/material.dart';
import 'package:plantify_ecommerce_app/screen/all_products.dart';

import '../constants/color.dart';
import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    /*buildAppBar start here*/
    AppBar buildAppBar() {
      return AppBar(
        title: Text(
          'PLANTIFY',
          style: TextStyle(
              fontFamily: 'Philosopher',
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.app_black_Color,
              letterSpacing: 4),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image(
          image: AssetImage('assets/images/IconImg.png'),
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Image(
              image: AssetImage('assets/images/bell.png'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrawerScreen(),
                  ));
            },
            child: Image(
              image: AssetImage('assets/images/filter.jpeg'),
            ),
          ),
        ],
      );
    }
    /*buildAppBar end here*/

    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                children: [
                  /*first portion start here*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 200,
                        width: 340,
                        padding: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/header.png'),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'There’s a Plant\nfor everyone',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20),
                            ),
                            SizedBox(
                              height: size.height * 0.02,
                            ),
                            const Text(
                              'Get your 1st plant\n@ 40% off',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  /*first portion end here*/
                  /*
                  /*seocnd portion start here*/
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32),
                              borderSide: const BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(32),
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.black),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            suffixIcon: Icon(
                              Icons.document_scanner_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.03,
                      ),
                      Expanded(
                        child: Container(
                          height: size.height * 0.07,
                          width: size.width * 0.07,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Icon(Icons.settings),
                        ),
                      ),
                    ],
                  ),
                  /*second portion end here*/
                  */

                  /*third portion start here*/
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .085,
                    child: AppBar(
                      elevation: 0,
                      backgroundColor: Colors.white,
                      bottom: TabBar(
                        isScrollable: true,
                        labelColor: Colors.green,
                        indicatorColor: Colors.green,
                        labelPadding: EdgeInsets.only(left: 25),
                        unselectedLabelColor: Colors.black,
                        tabs: [
                          Tab(
                            child: Text(
                              "Top Pick",
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Indoor",
                            ),
                          ),
                          Tab(
                            child: Text(
                              "OutDoor",
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Seeds",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /*third portion end here*/
                  TopPick(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget card() {
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(right: 70, top: 40),
        height: 300,
        width: 100,
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'Air Purifier',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(
                    width: 500,
                  ),
                  Image.asset('assets/images/foot.png'),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                'Pepermonia',
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    '440',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  const Icon(
                    Icons.favorite_border,
                    size: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  const Image(
                      image: AssetImage(
                    'assets/images/emoji.png',
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: 4,
        bottom: 40,
        child: Image.asset(
          'assets/images/Peperomia Obtusfolia.png',
          height: 20,
        ),
      ),
    ],
  );
}

/*card1*/
Widget card1(context) {
  final size = MediaQuery.of(context).size;
  return Stack(
    children: [
      Container(
        margin: const EdgeInsets.only(right: 70, top: 40),
        height: size.height * 0.3,
        width: size.width,
        color: Colors.green,
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const Text(
                    'Air Purifier',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Image.asset('assets/images/foot.png'),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Text(
                'Pepermonia',
                style:
                    const TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  Text(
                    '440',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                  SizedBox(
                    width: size.width * 0.10,
                  ),
                  const Icon(
                    Icons.favorite_border,
                    size: 40,
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  const Image(
                      image: AssetImage(
                    'assets/images/emoji.png',
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: 4,
        bottom: 40,
        child: Image.asset(
          'assets/images/Peperomia Obtusfolia.png',
          height: size.height * 0.20,
        ),
      ),
    ],
  );
}
/*card1*/