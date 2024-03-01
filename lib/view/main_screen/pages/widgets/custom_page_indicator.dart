import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator(
      {super.key, required this.count, required this.pageIndex});
  final int count;
  final int pageIndex;
  final double activeRadius = 3.2;
  final double unActiveRadius = 2.5;
  final double endRadius = 1.5;
  final double hiddenRadius = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: getPadding(index)),
          child: CircleAvatar(
            radius: pageIndex == index ? activeRadius : getRadius(index),
            backgroundColor:
                pageIndex == index ? ColorConstants.primaryBlue : null,
          ),
        );
      }),
    );
  }

  double getPadding(int index) {
    if (pageIndex - 6 >= index || pageIndex + 6 <= index) {
      return 0;
    }
    return 2;
  }

  double getradius(int index) {
    
    
    if (pageIndex - 6 >= index || pageIndex + 6 <= index) {
      return 0;
    } else if (pageIndex - 5 >= index || pageIndex + 5 <= index) {
      return 1.5;
    }
    return 2.5;
  }
}
