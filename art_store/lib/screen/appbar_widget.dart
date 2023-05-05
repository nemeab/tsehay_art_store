import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context, ElevatedButton elevatedButton) {
  return AppBar(
    leading: const BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
  );
}
