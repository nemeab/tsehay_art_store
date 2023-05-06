import 'package:art_store/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class Hot_products extends StatefulWidget {
  const Hot_products({Key? key}) : super(key: key);

  @override
  State<Hot_products> createState() => _Hot_productsState();
}

class _Hot_productsState extends State<Hot_products> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double scaleFactor = 0.8;
  double height = 220;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          height: 250,
          //width: 350,
          child: PageView.builder(
              itemCount: 3,
              itemBuilder: (context, position) {
                return _build_page_item(position);
              }),
        ),
        DotsIndicator(
          dotsCount: 3,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.Gold,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _build_page_item(int index) {
    return Stack(children: [
      Container(
        child: Image(
          image: AssetImage('images/sculpt_2.jpg'),
          height: 420,
          width: 400,
        ),
        height: 420,
        margin: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.MediumGray,
        ),
      ),
    ]);
  }
}
