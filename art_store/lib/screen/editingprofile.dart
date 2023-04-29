import 'dart:io';

import 'package:art_store/constants/constants.dart';
import 'package:art_store/screen/profile.dart';
import 'package:art_store/screen/user.dart';
import 'package:art_store/screen/user_preferences.dart';
import 'package:flutter/material.dart';
import 'package:art_store/screen/appbar_widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class EditProfile extends StatefulWidget {
  static const id = 'editprofile';
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late User user;
  @override
  void initState() {
    super.initState();
    user = UserPreferences.getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        physics: const BouncingScrollPhysics(),
        children: [
          profileWidget(
            imagepath: user.imagepath,
            isEdit: true,
            onClicked: () async {
              final image =
                  await ImagePicker().pickImage(source: ImageSource.gallery);

              if (image == null) return;

              final directory = await getApplicationDocumentsDirectory();
              final name = basename(image.path);
              final imagefile = File('${directory.path}/$name');
              final newImage = await File(image.path);

              setState(() {
                user = user.copy(imagepath: newImage.path);
              });
            },
          ),
          const SizedBox(
            height: 12,
          ),
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              labelText: 'Full Name',
              hintText: user.name,
            ),
            onChanged: (name) {
              user = user.copy(name: name);
            },
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                labelText: 'Email',
                hintText: user.email),
            onChanged: (email) {
              user = user.copy(email: email);
            },
          ),
          const SizedBox(
            height: 24,
          ),
          TextField(
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              labelText: 'About',
              hintText: user.about,
            ),
            maxLines: 5,
            onChanged: (about) {
              user = user.copy(about: about);
            },
          ),
          const SizedBox(height: 24),
          ElevatedButton(
              onPressed: () {
                UserPreferences.SetUser(user);
                Navigator.of(context).pop();
              },
              child: const Text('save'))
        ],
      ),
    );
  }

  basename(String path) {}
}
