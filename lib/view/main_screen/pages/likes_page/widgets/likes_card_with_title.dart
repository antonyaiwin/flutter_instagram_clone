import 'package:flutter/material.dart';

import '../../../../../core/constants/color_constants.dart';
import 'likes_list_tile.dart';

class LikesCardWithTitle extends StatelessWidget {
  const LikesCardWithTitle({
    super.key,
    required this.notificationMap,
  });

  final Map<String, dynamic> notificationMap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorConstants.primaryBlack.withOpacity(0.1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
            child: Text(
              notificationMap['title'],
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
          ),
          ...List.generate(
            notificationMap['notification_list'].length,
            (index) {
              // print('$index, ${notificationMap['notification_list']}');
              Map<String, dynamic> itemMap =
                  notificationMap['notification_list'][index];
              return LikesListTile(
                users: itemMap['users'],
                type: itemMap['type'],
                time: itemMap['time'],
                comment: itemMap['comment'],
                isAlreadyFollowing: itemMap['already_followed'],
                postsUrls: itemMap['posts_urls'],
              );
            },
          ),
        ],
      ),
    );
  }
}
