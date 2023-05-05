import 'package:flutter/material.dart';

class Small_text extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  Small_text({
    this.color = const Color(0xffdfd18a),
    required this.text,
    this.size = 12,
    this.height = 1.2
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        height: height
      ),
    );
  }
}
