import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plantify_ecommerce_app/screen/login.dart';

import '../constants/color.dart';

class Sawal extends StatefulWidget {
  const Sawal({super.key});

  @override
  State<Sawal> createState() => _SawalState();
}

class _SawalState extends State<Sawal> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          /*first portion start here */
          Row(
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.60,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.white,
                      child: Image.asset(
                        'assets/images/sawal green image.png',
                        height: MediaQuery.of(context).size.height * 0.60,
                        width: MediaQuery.of(context).size.width * 1,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: Container(
                        child: Image.asset(
                          'assets/images/sawal Vector.png',
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      //  top: 20,
                      left: 100,
                      // right: 110,
                      // bottom: 20,
                      child: Container(
                        child: Image.asset(
                          'assets/images/Logo (2).png',
                          width: MediaQuery.of(context).size.width * 0.50,
                          height: MediaQuery.of(context).size.height * 0.50,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 120,
                      child: Container(
                        child: Text(
                          'Plantify',
                          style: TextStyle(
                              fontFamily: 'Philosopher',
                              color: AppColors.app_white_Color,
                              fontSize: 50,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          /*first portion end here */
          /*second portion start here */
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  'GET READY\nBE HIGYENIC',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    color: AppColors.app_Green_Color,
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          /*second portion end here */
          /*third portion end here */
          Container(
            padding: EdgeInsets.only(top: 30, right: 90),
            child: Text(
              'Jelajahi AiLearn untuk menambah kemampuanmu\ndalam mengoperasikan Adobe Illustrator',
              style: TextStyle(
                fontFamily: 'Philosopher',
                color: AppColors.app_Green_Color,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          /*third portion end here */
          /*forth portion start here */
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.app_Green_Color,
                  ),
                  child: Center(
                      child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: AppColors.app_white_Color),
                  )),
                ),
              ),
            ),
          ),
          /*forth portion start here */
        ],
      ),
    );
  }
}
