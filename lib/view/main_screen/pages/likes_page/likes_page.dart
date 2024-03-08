// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/likes_page/tabs/following_tab.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/likes_page/tabs/you_tab.dart';

import '../../../../core/constants/color_constants.dart';

class LikesPage extends StatelessWidget {
  const LikesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: ColorConstants.primaryBlack,
              labelColor: ColorConstants.black26,
              unselectedLabelColor:
                  ColorConstants.primaryBlack.withOpacity(0.4),
              tabs: const [
                Tab(
                  text: 'Following',
                ),
                Tab(
                  text: 'You',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FollowingTab(),
              YouTab(),
            ],
          ),
        ),
      ),
    );
  }
}
