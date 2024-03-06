import 'package:flutter/material.dart';

import 'outlined_circle_avatar.dart';

class HilightsWidget extends StatelessWidget {
  const HilightsWidget({
    super.key,
    required this.title,
    this.backgroundImage,
    this.child,
  });
  final String title;
  final ImageProvider? backgroundImage;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedCircleAvatar(
            radius: 28,
            backgroundColor:
                backgroundImage == null ? Colors.transparent : null,
            backgroundImage: backgroundImage,
            child: child),
        const SizedBox(height: 7),
        Text(title),
      ],
    );
  }
}
