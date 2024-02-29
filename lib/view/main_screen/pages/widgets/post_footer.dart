import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/dummy_db.dart';

import '../../../../core/constants/color_constants.dart';
import 'post_footer_actions.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PostFooterActions(),
          const SizedBox(height: 15),
          Row(
            children: [
              const CircleAvatar(
                radius: 14,
                backgroundImage: NetworkImage(DummyDb.currentUserProfilePic),
              ),
              const SizedBox(width: 6.5),
              RichText(
                text: const TextSpan(
                  text: 'Liked by ',
                  style: TextStyle(color: ColorConstants.black26),
                  children: [
                    TextSpan(
                      text: 'craig_love',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: '44,686 others',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          RichText(
            text: const TextSpan(
              style: TextStyle(color: ColorConstants.black26),
              children: [
                TextSpan(
                  text: 'joshua_l',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text:
                        ' The game in Japan was amazing and I want to share some photos'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
