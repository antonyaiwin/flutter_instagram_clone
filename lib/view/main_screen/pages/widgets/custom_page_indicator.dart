import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator(
      {super.key, required this.count, required this.pageIndex});
  final int count;
  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: CircleAvatar(
            radius: pageIndex == index
                ? 3.2
                : pageIndex - 5 >= index || pageIndex + 5 <= index
                    ? 1.5
                    : 2.5,
            backgroundColor:
                pageIndex == index ? ColorConstants.primaryBlue : null,
          ),
        );
      }),
    );
  }
}
