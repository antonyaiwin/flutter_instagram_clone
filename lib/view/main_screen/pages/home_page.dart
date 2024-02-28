import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/icon_constants.dart';
import 'package:flutter_instagram_clone/core/constants/image_constants.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

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
              leading: const ImageIcon(
                AssetImage(MyIcons.cameraIconOutlinedPng),
                size: 24,
              ),
              title: Image.asset(
                ImageConstants.instaLogoPng,
                height: 28,
              ),
              actions: [
                Image.asset(MyIcons.igtvIconOutlinedPng),
                const SizedBox(width: 18.31),
                const ImageIcon(AssetImage(MyIcons.messengerOutlinedPng)),
                const SizedBox(width: 15.96),
              ],
            ),
            const Divider(),
            SizedBox(
              height: 102,
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 62,
                        width: 62,
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: const GradientBoxBorder(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xffFBAA47),
                                  Color(0xffD91A46),
                                  Color(0xffA60F93),
                                ],
                              ),
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: const CircleAvatar(
                          radius: 28,
                          backgroundImage:
                              AssetImage(ImageConstants.accountAvatarPng),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Name Here',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        maxLines: 1,
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10);
                },
                itemCount: 10,
              ),
            ),
            const Divider(),
            const FeedListView()
          ],
        ),
      ),
    );
  }
}
