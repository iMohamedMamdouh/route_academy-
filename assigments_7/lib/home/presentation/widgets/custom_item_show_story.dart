import 'package:assigments_7/core/model/story_dm.dart';
import 'package:assigments_7/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomItemShowStory extends StatelessWidget {
  const CustomItemShowStory({super.key, required this.story});

  final StoryDM story;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 12.0),
      height: 178,
      width: 112,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Stack(
        children: [
          Image.asset(story.image),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 5.0),
            child: Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: AppColors.primaryColor, width: 1),
              ),
              child: CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage(story.subImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
