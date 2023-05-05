import 'package:art_store/constants/Big_text.dart';
import 'package:art_store/constants/constants.dart';
import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.DarkGray,
      child: Center(child: Big_text(text: 'NO community for now')),
    );
  }
}
