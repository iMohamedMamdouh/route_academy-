import 'package:assigments_7/core/model/story_dm.dart';
import 'package:assigments_7/core/utils/app_colors.dart';
import 'package:assigments_7/core/utils/app_icons.dart';
import 'package:assigments_7/core/utils/app_images.dart';
import 'package:assigments_7/home/presentation/widgets/custom_post_widget.dart';
import 'package:assigments_7/home/presentation/widgets/row_for_add_post.dart';
import 'package:assigments_7/home/presentation/widgets/stories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<StoryDM> stories = [
    StoryDM(image: AppImages.storyImg1, subImage: AppImages.storySubImg1),
    StoryDM(image: AppImages.storyImg2, subImage: AppImages.storySubImg2),
    StoryDM(image: AppImages.storyImg3, subImage: AppImages.storySubImg3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            RowForAddPost(),
            Divider(thickness: 2),
            StoriesListView(stories: stories),
            Divider(thickness: 2),
            CustomPostWidget(),
            CustomPostWidget(),
            CustomPostWidget(),
          ],
        ),
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Image.asset(AppImages.facebookTextLogo, height: 36, width: 156),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.plusIconSvg),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.searchIconSvg),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.messengerIconSvg),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Home - active (blue)
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: AppColors.primaryColor,
                    size: 28,
                  ),
                ),
                // Video
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.ondemand_video_outlined,
                    color: Colors.grey,
                    size: 26,
                  ),
                ),
                // Marketplace
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.storefront_outlined,
                    color: Colors.grey,
                    size: 26,
                  ),
                ),
                // Profile
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.grey,
                    size: 26,
                  ),
                ),
                // Notifications
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_none,
                    color: Colors.grey,
                    size: 26,
                  ),
                ),
                // Avatar
                CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(AppImages.profilePic),
                ),
              ],
            ),
            Divider(thickness: 1),
          ],
        ),
      ),
    );
  }
}
