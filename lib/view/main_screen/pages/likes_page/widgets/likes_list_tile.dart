import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/core/constants/color_constants.dart';
import 'package:flutter_instagram_clone/core/constants/icon_constants.dart';
import 'package:flutter_instagram_clone/global_widgets/custom_button.dart';

class LikesListTile extends StatelessWidget {
  const LikesListTile({
    super.key,
    required this.users,
    required this.postsUrls,
    required this.type,
    required this.time,
    required this.comment,
    required this.isAlreadyFollowing,
  });
  final List users;
  final List postsUrls;
  final String type;
  final String time;
  final String? comment;
  final bool isAlreadyFollowing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: type == 'mentioned'
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.center,
        children: [
          users.length < 2
              ? CircleAvatar(
                  backgroundImage: NetworkImage(users[0]['profile_pic']),
                  radius: 22,
                )
              : Stack(
                  children: [
                    const SizedBox.square(
                      dimension: 44,
                    ),
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage(users[0]['profile_pic']),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 17.5,
                        backgroundColor: ColorConstants.primaryWhite,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              NetworkImage(users[1]['profile_pic']),
                        ),
                      ),
                    ),
                  ],
                ),
          const SizedBox(width: 12),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  Text.rich(
                    TextSpan(
                      style: const TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(text: '${users[0]['user_name']}'),
                        if (users.length == 2)
                          TextSpan(text: 'and ${users[1]['user_name']}'),
                        if (users.length > 2) ...[
                          TextSpan(text: ', ${users[1]['user_name']}'),
                          const TextSpan(
                            text: ' and ',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text:
                                '${users.length - 2} other${users.length - 2 > 1 ? 's' : ''}',
                          ),
                        ],
                        TextSpan(
                          text: type == 'liked'
                              ? ' liked your photo.'
                              : type == 'mentioned'
                                  ? ' mentioned you in a comment: '
                                  : type == 'followed'
                                      ? ' started following you.'
                                      : '',
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        if (comment != null && type == 'mentioned')
                          TextSpan(
                            text: comment,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        TextSpan(
                          text: ' $time',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: ColorConstants.primaryBlack.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                    maxLines: type == 'mentioned' ? 5 : 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (type == 'mentioned') ...[
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const SizedBox(width: 2),
                        ImageIcon(
                          const AssetImage(MyIcons.likeIconOutlinedPng),
                          size: 12,
                          color: ColorConstants.primaryBlack.withOpacity(0.4),
                        ),
                        const SizedBox(width: 14),
                        Text(
                          'Reply',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: ColorConstants.primaryBlack.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          if (type == 'followed')
            SizedBox(
              width: 90,
              child: isAlreadyFollowing
                  ? const CustomButton.outlined(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('Message'),
                    )
                  : const CustomButton(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text('Follow'),
                    ),
            ),
          if (type == 'liked' || type == 'mentioned')
            Image.network(
              postsUrls[0],
              height: 44,
              width: 44,
              fit: BoxFit.cover,
            )
        ],
      ),
    );
  }
}
