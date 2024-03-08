import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';
import 'package:flutter_instagram_clone/data/dummy/dummy_db.dart';

import '../widgets/likes_card_with_title.dart';

class YouTab extends StatelessWidget {
  const YouTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: ColorConstants.primaryBlack.withOpacity(0.1),
                ),
              ),
            ),
            child: const Text(
              'Follow Requests',
              style: TextStyle(fontSize: 15),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return LikesCardWithTitle(
                notificationMap: DummyDb.notificationsMapList[index],
              );
            },
            itemCount: DummyDb.notificationsMapList.length,
          ),
        ],
      ),
    );
  }
}
