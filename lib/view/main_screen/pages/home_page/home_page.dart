import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/icon_constants.dart';
import 'package:flutter_instagram_clone/core/constants/image_constants.dart';
import 'package:flutter_instagram_clone/data/dummy/dummy_db.dart';
import 'widgets/custom_story_avatar.dart';
import 'widgets/feed_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              surfaceTintColor: Colors.transparent,
              centerTitle: true,
              leading: IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(MyIcons.cameraIconOutlinedPng),
                  size: 24,
                ),
              ),
              title: Image.asset(
                ImageConstants.instaLogoPng,
                height: 28,
              ),
              actions: [
                Image.asset(
                  MyIcons.igtvIconOutlinedPng,
                  height: 24,
                  width: 24,
                ),
                const SizedBox(width: 18.31),
                const ImageIcon(AssetImage(MyIcons.messengerOutlinedPng)),
                const SizedBox(width: 15.96),
              ],
            ),
            const Divider(
              height: 1,
            ),
            SizedBox(
              height: 107,
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomStoryAvatar(
                    userName: DummyDb.storyList[index]['user_name'],
                    isLive: DummyDb.storyList[index]['is_live'],
                    profilePicUrl: DummyDb.storyList[index]['profile_pic'],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
                itemCount: DummyDb.storyList.length,
              ),
            ),
            const Divider(
              height: 1,
            ),
            const FeedListView()
          ],
        ),
      ),
    );
  }
}
