import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';
import 'package:flutter_instagram_clone/core/constants/icon_constants.dart';
import 'package:flutter_instagram_clone/data/dummy/dummy_db.dart';
import 'package:flutter_instagram_clone/view/new_post_screen/tabs/library_tab.dart';
import 'package:flutter_instagram_clone/view/new_post_screen/tabs/photo_tab.dart';
import 'package:flutter_instagram_clone/view/new_post_screen/tabs/video_tab.dart';

class NewPostScreen extends StatelessWidget {
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarTextStyle:
              const TextStyle(fontSize: 17, color: ColorConstants.black12),
          leadingWidth: 80,
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Center(
              child: Text('Cancel'),
            ),
          ),
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Recents'),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(fontSize: 17, color: ColorConstants.black12),
          actions: const [
            Text(
              'Next',
              style: TextStyle(color: ColorConstants.primaryBlue),
            ),
            SizedBox(width: 12),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              height: MediaQuery.sizeOf(context).height * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(DummyDb.currentUserProfilePic),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorConstants.black26.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)),
                    child: const ImageIcon(
                      AssetImage(MyIcons.boomerangOutlinedPng),
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: ColorConstants.black26.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)),
                    child: const ImageIcon(
                      AssetImage(MyIcons.collageOutlinedPng),
                      color: ColorConstants.primaryWhite,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        color: ColorConstants.black26.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)),
                    child: const Row(
                      children: [
                        ImageIcon(
                          AssetImage(
                            MyIcons.galleryOutlinedPng,
                          ),
                          color: ColorConstants.primaryWhite,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'SELECT MULTIPLE',
                          style: TextStyle(
                            color: ColorConstants.primaryWhite,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  LibraryTab(),
                  PhotoTab(),
                  VideoTab(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          labelColor: ColorConstants.black26,
          unselectedLabelColor: ColorConstants.primaryBlack.withOpacity(0.4),
          indicator: const BoxDecoration(),
          labelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          tabs: const [
            Tab(
              text: 'Library',
            ),
            Tab(
              text: 'Photo',
            ),
            Tab(
              text: 'Video',
            ),
          ],
        ),
      ),
    );
  }
}
