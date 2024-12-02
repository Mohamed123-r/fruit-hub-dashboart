import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class ImageFile extends StatefulWidget {
  const ImageFile({super.key, required this.onFileChanged});

  final void Function(File? file) onFileChanged;

  @override
  State<ImageFile> createState() => _ImageFileState();
}

class _ImageFileState extends State<ImageFile> {
  File? imageFile;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final ImagePicker picker = ImagePicker();
        final XFile? image =
            await picker.pickImage(source: ImageSource.gallery);
        setState(() {
          imageFile = File(image!.path);
          widget.onFileChanged(imageFile);
          isLoading = true;
        });
      },
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
            child: imageFile != null
                ? ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Image.file(
                      imageFile!,
                      fit: BoxFit.fill,
                    ),
                  )
                : const Icon(
                    Icons.image_outlined,
                    size: 100,
                  ),
          ),
          Positioned(
            left: 12,
            top: 8,
            child: isLoading
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        imageFile = null;
                        widget.onFileChanged(imageFile);
                        isLoading = false;
                      });
                    },
                    icon: const Icon(
                      Icons.close,
                      color: Colors.red,
                    ),
                  )
                : Text(
                    "Product Image",
                    style: TextStyles.bodySmallBold.copyWith(
                      color: AppColors.grayscale400Color,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
