import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/home_page/widgets/image_carousel.dart';

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
    required this.caption,
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
  final String caption;
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
          userName: widget.userName,
          likedUser: widget.likedUser,
          likedUserPicUrl: widget.likedUserPicUrl,
          caption: widget.caption,
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
