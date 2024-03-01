import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';

import 'post_footer.dart';
import 'post_header.dart';

class PostsCard extends StatelessWidget {
  const PostsCard({
    super.key,
    required this.userName,
    required this.place,
    required this.profilePicUrl,
    required this.postImageUrl,
    required this.isVerified,
    required this.likedUser,
    required this.likedUserPicUrl,
    required this.commentedUser,
    required this.hilightComment,
    required this.likeCount,
    required this.commentCount,
    required this.date,
  });
  final String userName;
  final String? place;
  final String profilePicUrl;
  final String postImageUrl;
  final bool isVerified;
  final String likedUser;
  final String likedUserPicUrl;
  final String commentedUser;
  final String hilightComment;
  final int likeCount;
  final int commentCount;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(
          isVerified: isVerified,
        ),
        const SizedBox(height: 11),
        Stack(
          children: [
            Image.network(
              postImageUrl,
              scale: 0.5,
            ),
            Positioned(
              right: 14,
              top: 14,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                  color: ColorConstants.black12.withOpacity(.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  '1/3',
                  style: TextStyle(
                      color: ColorConstants.primaryWhite, fontSize: 12),
                ),
              ),
            )
          ],
        ),
        PostFooter(
          date: date,
        ),
      ],
    );
  }
}
