import 'package:flutter/material.dart';

import '../core/constants/color_constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.color = ColorConstants.primaryBlue,
  });
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 34),
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: ColorConstants.primaryWhite,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
