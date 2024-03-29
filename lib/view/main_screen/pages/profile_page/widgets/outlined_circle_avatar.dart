import 'package:flutter/material.dart';

import '../../../../../core/constants/color_constants.dart';

class OutlinedCircleAvatar extends StatelessWidget {
  const OutlinedCircleAvatar({
    super.key,
    required this.radius,
    this.backgroundImage,
    this.child,
    this.backgroundColor,
  });
  final double radius;
  final ImageProvider<Object>? backgroundImage;
  final Widget? child;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: ColorConstants.lightGrey, width: 1.5),
          borderRadius: BorderRadius.circular(radius + 10)),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        child: child,
      ),
    );
  }
}
