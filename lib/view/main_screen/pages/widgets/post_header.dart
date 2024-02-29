import 'package:flutter/material.dart';

import '../../../../dummy_db.dart';

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
          backgroundImage: NetworkImage(DummyDb.currentUserProfilePic),
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
