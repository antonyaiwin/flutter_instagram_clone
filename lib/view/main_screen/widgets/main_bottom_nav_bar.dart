import 'package:flutter/material.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/icon_constants.dart';
import '../../../data/dummy/dummy_db.dart';

class MainBottomNavBar extends StatelessWidget {
  const MainBottomNavBar({
    super.key,
    this.onTap,
    this.currentIndex = 0,
  });
  final int currentIndex;
  final void Function(int value)? onTap;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: ColorConstants.black26,
        unselectedItemColor: ColorConstants.black26,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyIcons.homeIconOutlinedPng)),
            activeIcon: ImageIcon(AssetImage(MyIcons.homeIconFilledPng)),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyIcons.searchIconOutlinedPng)),
            activeIcon: ImageIcon(AssetImage(MyIcons.searchIconFilledPng)),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyIcons.newPostIconFilledPng)),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyIcons.likeIconOutlinedPng)),
            activeIcon: ImageIcon(AssetImage(MyIcons.likeIconFilledPng)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                border: Border.all(
                  color: currentIndex != 4
                      ? Colors.transparent
                      : ColorConstants.black26,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const CircleAvatar(
                radius: 13,
                backgroundImage: NetworkImage(DummyDb.currentUserProfilePic),
              ),
            ),
            label: '',
          ),
        ]);
  }
}
