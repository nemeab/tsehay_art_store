import 'dart:io';

import 'package:flutter/material.dart';
import 'package:art_store/constants/constants.dart';

class profileWidget extends StatelessWidget {
  final String imagepath;
  final VoidCallback onClicked;
  final bool isEdit;

  const profileWidget({
    Key? key,
    required this.imagepath,
    required this.onClicked,
    required this.isEdit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(children: [
        buildImage(),
        Positioned(bottom: 0, right: 4, child: buildEditIcon(color, isEdit)),
      ]),
    );
  }

  Widget buildImage() {
    final image = imagepath.contains('https://')
        ? NetworkImage(imagepath)
        : FileImage(File(imagepath));

    return ClipOval(
      child: Material(
        child: Ink.image(
          image: image as ImageProvider,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(
            onTap: onClicked,
          ),
        ),
      ),
    );
  }
}

Widget buildEditIcon(Color color, bool isEdit) => buildCircle(
      color: AppColors.Gold,
      all: 8,
      child: Icon(
        isEdit ? Icons.add_a_photo : Icons.edit,
        color: AppColors.Gold,
        size: 20,
      ),
    );

Widget buildCircle({
  required Widget child,
  required double all,
  required Color color,
}) =>
    ClipOval(
      child: Container(
        padding: EdgeInsets.all(all),
        color: AppColors.DarkGray,
        child: child,
      ),
    );
