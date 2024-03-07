// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../../core/constants/color_constants.dart';
import '../../../../core/constants/icon_constants.dart';
import '../../../../data/dummy/dummy_db.dart';
import '../../../../global_widgets/custom_button.dart';
import 'widgets/hilights_widget.dart';
import 'widgets/outlined_circle_avatar.dart';
import 'widgets/profile_data_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                surfaceTintColor: Colors.transparent,
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
                pinned: true,
              ),
              SliverPadding(
                padding: EdgeInsets.all(12),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    [
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
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
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
                      SizedBox(
                        height: 96,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return HilightsWidget(
                                title: 'New',
                                child: Icon(
                                  Icons.add,
                                  size: 35,
                                ),
                              );
                            }
                            return HilightsWidget(
                              title: DummyDb.hilightsMapList[index - 1]
                                  ['title'],
                              backgroundImage: NetworkImage(DummyDb
                                  .hilightsMapList[index - 1]['image_url']),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 10);
                          },
                          itemCount: DummyDb.hilightsMapList.length + 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: const Divider(
                  height: 1,
                ),
              ),
              // SliverList.builder(
              //   itemBuilder: (context, index) => Container(
              //     height: 100,
              //     width: double.infinity,
              //     color: Colors.red[100 * (index % 9 + 1)],
              //   ),
              //   itemCount: 5,
              // ),
              SliverAppBar(
                toolbarHeight: 0,
                surfaceTintColor: Colors.transparent,
                bottom: TabBar(
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
                pinned: true,
                primary: false,
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                padding: EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                itemBuilder: (context, index) {
                  return Image.network(DummyDb
                      .personImages[index % DummyDb.personImages.length]);
                },
                itemCount: DummyDb.personImages.length * 5,
              ),
              GridView.builder(
                padding: EdgeInsets.all(0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
      ),
    );
  }
}
