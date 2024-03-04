// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';
import 'package:gradient_borders/gradient_borders.dart';

class CustomStoryAvatar extends StatelessWidget {
  const CustomStoryAvatar({
    super.key,
    required this.userName,
    required this.profilePicUrl,
    this.isLive = false,
  });

  final bool isLive;
  final String userName;
  final String profilePicUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                height: 62,
                width: 62,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    border: const GradientBoxBorder(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFBAA47),
                            Color(0xffD91A46),
                            Color(0xffA60F93),
                          ],
                        ),
                        width: 2),
                    borderRadius: BorderRadius.circular(50)),
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(profilePicUrl),
                ),
              ),
              if (isLive)
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            ColorConstants.storyBorderGradientColor1,
                            ColorConstants.storyBorderGradientColor2,
                            ColorConstants.storyBorderGradientColor3,
                          ],
                        ),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: ColorConstants.primaryWhite,
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        boxShadow: null),
                    child: Text(
                      'LIVE',
                      style: TextStyle(
                          color: ColorConstants.primaryWhite,
                          fontSize: 8,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(height: 5),
          Text(
            userName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}
