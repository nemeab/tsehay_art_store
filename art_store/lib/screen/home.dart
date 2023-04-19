import 'package:art_store/constants/Big_text.dart';
import 'package:flutter/material.dart';
import 'package:art_store/constants/constants.dart';

import '../constants/small_text.dart';
import '../widgets/Hot_products.dart';

class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  static const id = 'homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.DarkGray,
      body: ListView(
        children: [Container(
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
                      )
                    ],
                  ),
                ),
              ),
              Hot_products(),
              Padding(
                padding: const EdgeInsets.only(top: 20, right: 380, bottom: 20),
                child: Big_text(
                  text: 'Catagory',
                ),
              ),
              Container(
                height: 100,
                width: 400,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff3e3e40),
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
                        Big_text(text: 'PENCIL'),
                        Small_text(text: 'fghjfgjfjhjhjklhklhjlkhjlkhfgjfgj')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 400,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff3e3e40),
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
                        Big_text(text: 'PENCIL'),
                        Small_text(text: 'fghjfgjfjhjhjklhklhjlkhjlkhfgjfgj')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 400,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff3e3e40),
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
                        Big_text(text: 'PENCIL'),
                        Small_text(text: 'fghjfgjfjhjhjklhklhjlkhjlkhfgjfgj')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 400,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff3e3e40),
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
                        Big_text(text: 'PENCIL'),
                        Small_text(text: 'fghjfgjfjhjhjklhklhjlkhjlkhfgjfgj')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 400,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff3e3e40),
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
                        Big_text(text: 'PENCIL'),
                        Small_text(text: 'fghjfgjfjhjhjklhklhjlkhjlkhfgjfgj')
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),]
      ),
    );
  }
}
