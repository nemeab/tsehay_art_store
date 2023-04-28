//import 'dart:html';

import 'package:art_store/constants/Big_text.dart';
import 'package:art_store/screen/community.dart';
import 'package:art_store/screen/products.dart';
import 'package:flutter/material.dart';
import 'package:art_store/constants/constants.dart';
import 'package:art_store/widgets/Bottom_navigation_bar.dart';
import '../constants/small_text.dart';
import '../widgets/Hot_products.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key, required this.name}) : super(key: key);

  static const id = 'homescreen';
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.DarkGray,
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.LightGray,
              AppColors.DarkGray,
              AppColors.DarkGray,
            ],
          )),
          child: Column(
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.only(top: 25, bottom: 15),
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Big_text(
                            text: 'Tsehay',
                          ),
                          Small_text(text: 'ART STORE'),
                          Small_text(text: 'BUY WHAT U WANT')
                        ],
                      ),
                      Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          child: Icon(
                            Icons.search,
                            color: AppColors.LightGray,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.Gold),
                        ),
                      ),
                      //Small_text(text: 'ART STORE'),
                    ],
                  ),
                ),
              ),
              const Hot_products(),
              // const Padding(
              //   padding: EdgeInsets.only(top: 20, right: 380, bottom: 20),
              //   child: Text(
              //     'Catagory',
              //   ),
              // ),
              Container(
                color: Colors.transparent,
                height: 50,
                child: Column(
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Catagory',
                      style: TextStyle(color: AppColors.Gold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 400,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xff3e3e40),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Product_screen()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 70,
                        width: 100,
                        child: const Image(
                          image: AssetImage('arts.png'),
                          height: 69,
                          width: 99,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Big_text(text: 'Art Equpiments'),
                            Small_text(
                                text: 'Buy art Equpiments for you next post')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 400,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xff3e3e40),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Community()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 100,
                        color: AppColors.DarkGray,
                        child: const Image(
                          image: AssetImage(
                              'c659fc6221f6cdb2f78668b4cfa04619.png'),
                          height: 69,
                          width: 99,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Big_text(text: 'Community'),
                          Small_text(text: 'Chat Here')
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 400,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xff3e3e40),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Community()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: const Image(
                          image: AssetImage('events.png'),
                          height: 69,
                          width: 99,
                        ),
                        height: 70,
                        width: 100,
                        color: AppColors.DarkGray,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Big_text(text: 'Events'),
                          Small_text(text: 'Catch Art Events')
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
