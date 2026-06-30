import 'package:assigments_7/core/model/story_dm.dart';
import 'package:assigments_7/home/presentation/widgets/custom_item_create_story.dart';
import 'package:assigments_7/home/presentation/widgets/custom_item_show_story.dart';
import 'package:flutter/material.dart';

class StoriesListView extends StatelessWidget {
  const StoriesListView({super.key, required this.stories});

  final List<StoryDM> stories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, top: 16.0, bottom: 16),
      child: SizedBox(
        height: 178,
        child: ListView.builder(
          itemCount: stories.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return CustomItemCreateStory();
            }
            return CustomItemShowStory(story: stories[index - 1]);
          },
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
