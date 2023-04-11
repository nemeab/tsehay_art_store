import 'package:flutter/material.dart';

class Hot_products extends StatefulWidget {
  const Hot_products({Key? key}) : super(key: key);

  @override
  State<Hot_products> createState() => _Hot_productsState();
}

class _Hot_productsState extends State<Hot_products> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, position){
        return _build_page_item(position);
      }),
    );
  }
  Widget _build_page_item(int index){
    return Container(
      height: 220,
      margin: EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff3e3e40),
      ),
    );
  }
}
