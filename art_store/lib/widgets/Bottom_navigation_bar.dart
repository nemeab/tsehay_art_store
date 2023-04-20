import 'package:art_store/screen/community.dart';
import 'package:art_store/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:art_store/constants/constants.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  static const String id = 'base';

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int _currentindex = 0;
  final tabs = [
    Home_page(),
    Community(),
    Community(),
    // RepositoryProvider(
    //   create: (context) => Foodrepositery(),
    //   child: const Foo,
    // )
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.ice_skating,
        size: 30,
      ),
      Icon(
        Icons.home,
        size: 30,
      )
    ];
    return Scaffold(
      extendBody: true,
      body: tabs[_currentindex],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: AppColors.LightGray)),
        child: CurvedNavigationBar(
          color: AppColors.DarkGray,
          buttonBackgroundColor: AppColors.Gold,
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 400),
          index: _currentindex,
          items: items,
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
      ),
    );
  }
}
