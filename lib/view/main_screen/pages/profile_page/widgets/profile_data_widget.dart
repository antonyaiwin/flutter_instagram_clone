import 'package:flutter/material.dart';

class ProfileDataWidget extends StatelessWidget {
  const ProfileDataWidget({
    super.key,
    required this.value,
    required this.name,
  });
  final String value, name;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}
