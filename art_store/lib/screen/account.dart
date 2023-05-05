import 'package:art_store/constants/constants.dart';

import 'package:art_store/screen/editingprofile.dart';
import 'package:art_store/screen/login.dart';
import 'package:art_store/screen/profile.dart';
import 'package:art_store/screen/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:art_store/screen/user.dart';

class ProfilePage extends StatefulWidget {
  static const id = 'account_screen';
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.getUser();

    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.LightGray,
        appBar: AppBar(
          backgroundColor: AppColors.LightGray,
          actions: [
            IconButton(
                color: AppColors.Gold,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                icon: const Icon(Icons.logout))
          ],
        ),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 24,
            ),
            profileWidget(
              imagepath: user.imagepath,
              onClicked: () async {
                await Navigator.pushNamed(context, EditProfile.id);
                setState(() {});
              },
              isEdit: true,
            ),
            const SizedBox(height: 24),
            buildName(user),
            const SizedBox(
              height: 25,
            ),
            buildAbout(user),
          ],
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(
                color: AppColors.Gold,
                fontWeight: FontWeight.bold,
                fontSize: 24),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            user.email,
            style: const TextStyle(color: AppColors.Gold),
          )
        ],
      );
  Widget buildAbout(User user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bio',
              style: TextStyle(
                  color: AppColors.Gold,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              user.about,
              style: const TextStyle(
                  color: AppColors.Gold, fontSize: 16, height: 1.4),
            )
          ],
        ),
      );
}
