import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ImageFile extends StatefulWidget {
  const ImageFile({super.key});

  @override
  State<ImageFile> createState() => _ImageFileState();
}

class _ImageFileState extends State<ImageFile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffF9FAFA),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 1,
                color: const Color(
                  0xffE6E9EA,
                ),
              ),
            ),
            child: const Icon(
              Icons.image_outlined,
              size: 100,
            ),
          ),
          Positioned(
            left: 12,
            top: 8,
            child: Text(
              "Product Image",
              style: TextStyles.bodySmallBold
                  .copyWith(color: AppColors.grayscale400Color),
            ),
          ),
        ],
      ),
    );
  }
}
