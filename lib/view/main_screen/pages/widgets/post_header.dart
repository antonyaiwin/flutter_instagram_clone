import 'package:flutter/material.dart';

import '../../../../core/constants/image_constants.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(width: 10),
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(ImageConstants.accountAvatarPng),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'UserName',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 1),
            Text(
              'UserName',
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ],
        ),
        Spacer(),
        Icon(Icons.more_horiz),
        SizedBox(width: 10),
      ],
    );
  }
}
