import 'package:assigments_7/core/utils/app_colors.dart';
import 'package:assigments_7/core/utils/app_icons.dart';
import 'package:assigments_7/core/utils/app_images.dart';
import 'package:assigments_7/core/utils/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomItemCreateStory extends StatelessWidget {
  const CustomItemCreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178,
      width: 112,
      decoration: BoxDecoration(color: AppColors.white),
      child: Stack(
        children: [
          Image.asset(AppImages.storeImg),
          Positioned(
            left: 15,
            top: 139,
            child: SizedBox(
              width: 81,
              height: 33,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: Text(
                  AppString.textBottomStory,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
              ),
            ),
          ),
          Positioned(
            left: 43,
            top: 111,
            child: Container(
              width: 26,
              height: 26,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
              ),
              child: SvgPicture.asset(
                AppIcons.plusIconSvg,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
