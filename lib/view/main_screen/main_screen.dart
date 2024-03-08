import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/home_page/home_page.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/likes_page/likes_page.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/profile_page/profile_page.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/search_page/search_page.dart';
import 'package:flutter_instagram_clone/view/new_post_screen/new_post_screen.dart';

import 'widgets/main_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int navIndex = 0;

  final List pages = [
    const HomePage(),
    const SearchPage(),
    Container(
      color: Colors.white,
    ),
    const LikesPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[navIndex],
      bottomNavigationBar: MainBottomNavBar(
        currentIndex: navIndex,
        onTap: (value) {
          if (value != 2) {
            setState(() {
              navIndex = value;
            });
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewPostScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}
