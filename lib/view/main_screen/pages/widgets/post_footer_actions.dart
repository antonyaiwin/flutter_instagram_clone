import 'package:flutter/material.dart';

import '../../../../core/constants/icon_constants.dart';

class PostFooterActions extends StatelessWidget {
  const PostFooterActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
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
        Expanded(child: Icon(Icons.more_horiz)),
        Expanded(
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
