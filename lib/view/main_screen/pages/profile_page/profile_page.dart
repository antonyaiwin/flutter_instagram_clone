import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';
import 'package:flutter_instagram_clone/core/constants/icon_constants.dart';
import 'package:flutter_instagram_clone/core/constants/image_constants.dart';
import 'package:flutter_instagram_clone/data/dummy/dummy_data.dart';
import 'package:flutter_instagram_clone/dummy_db.dart';
import 'package:flutter_instagram_clone/global_widgets/custom_button.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/profile_page/widgets/outlined_circle_avatar.dart';

import 'widgets/profile_data_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageIcon(
              AssetImage(MyIcons.lockFilledPng),
              size: 15,
            ),
            SizedBox(width: 5),
            Text(DummyDb.currentUserName),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.menu,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: DefaultTabController(
        length: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedCircleAvatar(
                          radius: 48,
                          backgroundImage:
                              NetworkImage(DummyDb.currentUserProfilePic),
                        ),
                        ProfileDataWidget(value: '54', name: 'Posts'),
                        ProfileDataWidget(value: '834', name: 'Followers'),
                        ProfileDataWidget(value: '162', name: 'Following'),
                        SizedBox(width: 10),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      DummyDb.currentUserFullName,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      DummyDb.currentUserCaption,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 15),
                    const CustomButton.outlined(child: Text('Edit Profile')),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const HilightsWidget(
                          title: 'New',
                          child: Icon(
                            Icons.add,
                            size: 35,
                          ),
                        ),
                        const SizedBox(width: 10),
                        HilightsWidget(
                          backgroundImage:
                              NetworkImage(DummyDb.personImages[8]),
                          title: 'Friends',
                        ),
                        const SizedBox(width: 10),
                        HilightsWidget(
                          backgroundImage:
                              NetworkImage(DummyDb.personImages[5]),
                          title: 'Sports',
                        ),
                        const SizedBox(width: 10),
                        HilightsWidget(
                          backgroundImage:
                              NetworkImage(DummyDb.personImages[1]),
                          title: 'Design',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 1,
              ),
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: ColorConstants.primaryBlack,
                labelColor: ColorConstants.black26,
                unselectedLabelColor:
                    ColorConstants.primaryBlack.withOpacity(0.4),
                tabs: const [
                  Tab(
                    icon: ImageIcon(AssetImage(MyIcons.gridOutlinedPng)),
                  ),
                  Tab(
                    icon: ImageIcon(AssetImage(MyIcons.tagsOutlinedPng)),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height - 200,
                child: TabBarView(
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                      ),
                      itemBuilder: (context, index) {
                        return Image.network(DummyDb.personImages[index]);
                      },
                      itemCount: DummyDb.personImages.length,
                    ),
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                      ),
                      itemBuilder: (context, index) {
                        return Image.network(DummyDb.personImages[index]);
                      },
                      itemCount: DummyDb.personImages.length,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HilightsWidget extends StatelessWidget {
  const HilightsWidget({
    super.key,
    required this.title,
    this.backgroundImage,
    this.child,
  });
  final String title;
  final ImageProvider? backgroundImage;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedCircleAvatar(
            radius: 28,
            backgroundColor:
                backgroundImage == null ? Colors.transparent : null,
            backgroundImage: backgroundImage,
            child: child),
        const SizedBox(height: 7),
        Text(title),
      ],
    );
  }
}
