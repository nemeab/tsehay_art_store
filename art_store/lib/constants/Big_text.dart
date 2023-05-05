import 'package:flutter/material.dart';
import 'constants.dart';

class Big_text extends StatelessWidget {
  Color? color;
  final String text;
  late double? size;
  TextOverflow overflow;
  Big_text(
      {super.key,
      this.color = const Color(0xffdfd18a),
      required this.text,
      this.size,
      this.overflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontSize: size = 20,
      ),
    );
  }
}
