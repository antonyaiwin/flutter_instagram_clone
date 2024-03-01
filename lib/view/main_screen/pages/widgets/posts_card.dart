import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/widgets/image_carousel.dart';

import 'post_footer.dart';
import 'post_header.dart';

class PostsCard extends StatefulWidget {
  const PostsCard({
    super.key,
    required this.userName,
    required this.place,
    required this.profilePicUrl,
    required this.isVerified,
    required this.postImagesUrlList,
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
  final bool isVerified;
  final List postImagesUrlList;
  final String likedUser;
  final String likedUserPicUrl;
  final String commentedUser;
  final String hilightComment;
  final int likeCount;
  final int commentCount;
  final String date;

  @override
  State<PostsCard> createState() => _PostsCardState();
}

class _PostsCardState extends State<PostsCard> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostHeader(
          userName: widget.userName,
          place: widget.place,
          profilePicUrl: widget.profilePicUrl,
          isVerified: widget.isVerified,
        ),
        const SizedBox(height: 11),
        ImageCarousel(
          postImagesUrlList: widget.postImagesUrlList,
          onPageChanged: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
        ),
        PostFooter(
          likedUser: widget.likedUser,
          likedUserPicUrl: widget.likedUserPicUrl,
          commentedUser: widget.commentedUser,
          hilightComment: widget.hilightComment,
          likeCount: widget.likeCount,
          commentCount: widget.commentCount,
          date: widget.date,
          pageCount: widget.postImagesUrlList.length,
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
