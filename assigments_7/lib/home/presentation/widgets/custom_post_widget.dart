import 'package:assigments_7/core/utils/app_images.dart';
import 'package:assigments_7/home/presentation/widgets/list_tile_top_post.dart';
import 'package:flutter/material.dart';

class CustomPostWidget extends StatelessWidget {
  const CustomPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileTopPost(),
        SizedBox(height: 16),
        Image.asset(AppImages.postImg),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 8),
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(width: 8),
                  Icon(Icons.send),
                ],
              ),

              Icon(Icons.bookmark_border),
            ],
          ),
        ),
        SizedBox(height: 16),
        Divider(thickness: 2),
      ],
    );
  }
}
