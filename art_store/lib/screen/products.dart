import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: Expanded(
          child: Container(
            color: Colors.white,
            height: 10,
            width: 10,
          ),
        ),
      ),
    );
  }
}
