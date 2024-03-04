import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/view/main_screen/pages/home_page/widgets/custom_page_indicator.dart';

import '../../../../../core/constants/icon_constants.dart';

class PostFooterActions extends StatelessWidget {
  const PostFooterActions({
    super.key,
    required this.pageCount,
    required this.currentPageIndex,
  });

  final int pageCount;
  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Expanded(
          flex: 3,
          child: Row(
            children: [
              ImageIcon(
                AssetImage(MyIcons.likeIconOutlinedPng),
              ),
              SizedBox(width: 17.5),
              ImageIcon(
                AssetImage(MyIcons.commentIconOutlinedPng),
              ),
              SizedBox(width: 17.5),
              ImageIcon(
                AssetImage(MyIcons.messengerOutlinedPng),
              ),
            ],
          ),
        ),
        if (pageCount > 1)
          Expanded(
            flex: 2,
            child: CustomPageIndicator(
              count: pageCount,
              pageIndex: currentPageIndex,
            ),
          ),
        const Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ImageIcon(
                AssetImage(MyIcons.saveIconOutlinedPng),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
