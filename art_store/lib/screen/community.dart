import 'package:art_store/constants/Big_text.dart';
import 'package:flutter/material.dart';
import 'package:art_store/constants/constants.dart';
import 'package:art_store/widgets/Bottom_navigation_bar.dart';
import '../constants/small_text.dart';
import '../widgets/Hot_products.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  static const id = 'Community';

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
                  margin: const EdgeInsets.only(top: 25, bottom: 15),
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Big_text(
                            text: 'Tsehay',
                          ),
                          Small_text(text: 'ART STORE'),
                        ],
                      ),
                      Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: AppColors.Gold),
                          child: Icon(
                            Icons.search,
                            color: AppColors.LightGray,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Hot_products(),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 380, bottom: 20),
                child: Big_text(
                  text: 'Catagory',
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      color: AppColors.DarkGray,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Big_text(text: 'Community'),
                        Small_text(text: 'fghjfgjfjhjhjklhklhjlkhjlkhfgjfgj')
                      ],
                    )
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      color: AppColors.DarkGray,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Big_text(text: 'Art Works'),
                        Small_text(text: 'fghjfgjfjhjhjklhklhjlkhjlkhfgjfgj')
                      ],
                    )
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 70,
                      width: 100,
                      color: AppColors.DarkGray,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Big_text(text: 'Events'),
                        Small_text(text: 'fghjfgjfjhjhjklhklhjlkhjlkhfgjfgj')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
