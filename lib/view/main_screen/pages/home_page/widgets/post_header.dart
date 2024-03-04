import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
    required this.userName,
    required this.place,
    required this.profilePicUrl,
    required this.isVerified,
  });
  final String userName;
  final String? place;
  final String profilePicUrl;
  final bool isVerified;
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
            Row(
              children: [
                Text(
                  userName,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (isVerified) ...[
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.verified,
                    color: ColorConstants.primaryBlue,
                    size: 14,
                  )
                ]
              ],
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
