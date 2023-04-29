import 'package:art_store/screen/account.dart';
import 'package:art_store/screen/community.dart';
import 'package:art_store/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:art_store/constants/constants.dart';

class Base extends StatefulWidget {
  const Base({super.key});
  static const id = 'bottom_navigation';

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int _currentindex = 0;
  final tabs = [
    const Home_page(
      name: 'natnael',
    ),
    const Community(),
    ProfilePage()
    // RepositoryProvider(
    //   create: (context) => Foodrepositery(),
    //   child: const Foo,
    // )
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.ice_skating,
        size: 30,
      ),
      const Icon(
        Icons.person,
        size: 30,
      )
    ];
    return Scaffold(
      extendBody: true,
      body: tabs[_currentindex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: const IconThemeData(color: AppColors.LightGray)),
        child: CurvedNavigationBar(
          color: AppColors.DarkGray,
          buttonBackgroundColor: AppColors.Gold,
          backgroundColor: Colors.transparent,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 400),
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
