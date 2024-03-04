import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone/global_widgets/custom_button.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/icon_constants.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Flexible(
            child: TextField(
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              decoration: InputDecoration(
                prefixIconColor: ColorConstants.black3c.withOpacity(.6),
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 11, horizontal: 15),
                isDense: true,
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: ColorConstants.black3c.withOpacity(.6),
                  fontSize: 16,
                ),
                filled: true,
                fillColor: ColorConstants.searchFieldFill.withOpacity(.12),
                prefixIcon: const ImageIcon(
                  AssetImage(MyIcons.searchIconOutlinedPng),
                ),
                prefixIconConstraints: BoxConstraints.tight(const Size(45, 18)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: () {},
            child: const ImageIcon(
              AssetImage(MyIcons.liveOutlinedPng),
            ),
          ),
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          alignment: Alignment.centerLeft,
          height: kToolbarHeight,
          child: const SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomButton.outlined(
                  expanded: false,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage(MyIcons.igtvIconFilledPng),
                      ),
                      SizedBox(width: 6),
                      Text('IGTV'),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                CustomButton.outlined(
                  expanded: false,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage(MyIcons.shopIconFilledPng),
                      ),
                      SizedBox(width: 6),
                      Text('Shop'),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                CustomButton.outlined(
                  expanded: false,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Style'),
                ),
                SizedBox(width: 10),
                CustomButton.outlined(
                  expanded: false,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Sports'),
                ),
                SizedBox(width: 10),
                CustomButton.outlined(
                  expanded: false,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Auto'),
                ),
                SizedBox(width: 10),
                CustomButton.outlined(
                  expanded: false,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Music'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
