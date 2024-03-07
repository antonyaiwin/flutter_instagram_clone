import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_instagram_clone/data/dummy/dummy_db.dart';

import 'posts_card.dart';

class FeedListView extends StatelessWidget {
  const FeedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return PostsCard(
          userName: DummyDb.postsList[index]['user_name'],
          place: DummyDb.postsList[index]['place'],
          profilePicUrl: DummyDb.postsList[index]['profile_pic'],
          isVerified: DummyDb.postsList[index]['is_verified'],
          postImagesUrlList: DummyDb.postsList[index]['post_images'],
          likedUser: DummyDb.postsList[index]['liked_user'],
          likedUserPicUrl: DummyDb.postsList[index]['liked_user_pic'],
          caption: DummyDb.postsList[index]['caption'],
          likeCount: DummyDb.postsList[index]['like_count'],
          commentCount: DummyDb.postsList[index]['comment_count'],
          date: DummyDb.postsList[index]['date'],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: DummyDb.postsList.length,
    );
  }
}
