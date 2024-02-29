import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.userName,
    required this.place,
    required this.profilePicUrl,
  });
  final String userName;
  final String? place;
  final String profilePicUrl;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10),
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(profilePicUrl),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (place != null) ...[
              const SizedBox(height: 1),
              Text(
                place!,
                style: const TextStyle(
                  fontSize: 11,
                ),
              ),
            ]
          ],
        ),
        const Spacer(),
        const Icon(Icons.more_horiz),
        const SizedBox(width: 10),
      ],
    );
  }
}
