import 'package:assigments_7/core/utils/app_colors.dart';
import 'package:assigments_7/core/utils/app_icons.dart';
import 'package:assigments_7/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RowForAddPost extends StatelessWidget {
  const RowForAddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(backgroundImage: AssetImage(AppImages.profilePic)),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "What’s in Your Mind?",
                hintStyle: TextStyle(color: AppColors.hintTextColor),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppIcons.photosIconSvg),
          ),
        ],
      ),
    );
  }
}
