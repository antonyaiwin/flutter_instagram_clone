import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'post_footer.dart';
import 'post_header.dart';

class FeedListView extends StatelessWidget {
  const FeedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          children: [
            const PostHeader(),
            const SizedBox(height: 11),
            Image.asset(
              'assets/images/dummy_image.png',
              scale: 0.5,
            ),
            // const SizedBox(height: 13.5),
            const PostFooter()
          ],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: 10,
    );
  }
}
