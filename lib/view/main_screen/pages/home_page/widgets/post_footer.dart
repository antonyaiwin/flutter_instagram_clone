import 'package:flutter/material.dart';

import '../../../../../core/constants/color_constants.dart';
import 'post_footer_actions.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
    super.key,
    required this.userName,
    required this.likedUser,
    required this.likedUserPicUrl,
    required this.caption,
    required this.likeCount,
    required this.commentCount,
    required this.date,
    required this.pageCount,
    required this.currentPageIndex,
  });

  final String userName;
  final String likedUser;
  final String likedUserPicUrl;
  final String caption;
  final int likeCount;
  final int commentCount;
  final String date;
  final int pageCount;
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostFooterActions(
            currentPageIndex: currentPageIndex,
            pageCount: pageCount,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundImage: NetworkImage(likedUserPicUrl),
              ),
              const SizedBox(width: 6.5),
              RichText(
                text: TextSpan(
                  text: 'Liked by ',
                  style: const TextStyle(color: ColorConstants.black26),
                  children: [
                    TextSpan(
                      text: likedUser,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const TextSpan(text: ' and '),
                    TextSpan(
                        text: '$likeCount others',
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              style: const TextStyle(color: ColorConstants.black26),
              children: [
                TextSpan(
                  text: '$userName ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: caption,
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'View all $commentCount comments',
            style: TextStyle(
              color: ColorConstants.black26.withOpacity(0.75),
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: ColorConstants.black26.withOpacity(0.75),
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
