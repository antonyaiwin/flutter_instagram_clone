import 'package:flutter/material.dart';

import '../../../../../core/constants/color_constants.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    super.key,
    required this.postImagesUrlList,
    this.onPageChanged,
  });

  final List postImagesUrlList;
  final void Function(int value)? onPageChanged;
  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375,
      child: Stack(
        children: [
          PageView.builder(
            onPageChanged: (value) {
              setState(() {
                pageIndex = value;
              });
              if (widget.onPageChanged != null) {
                widget.onPageChanged!(pageIndex);
              }
            },
            itemBuilder: (context, index) {
              return Image.network(
                widget.postImagesUrlList[index],
                fit: BoxFit.cover,
              );
            },
            itemCount: widget.postImagesUrlList.length,
          ),
          if (widget.postImagesUrlList.length > 1)
            Positioned(
              right: 14,
              top: 14,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
                decoration: BoxDecoration(
                  color: ColorConstants.black12.withOpacity(.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  '${pageIndex + 1}/${widget.postImagesUrlList.length}',
                  style: const TextStyle(
                      color: ColorConstants.primaryWhite,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ),
            )
        ],
      ),
    );
  }
}
