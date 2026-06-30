
import 'package:assigments_7/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class ListTileTopPost extends StatelessWidget {
  const ListTileTopPost({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: AssetImage(AppImages.routeImg),
      ),
      title: Text("Route", style: TextStyle(color: Colors.black)),
      subtitle: Row(
        children: [
          Text("8h ."),
          Icon(Icons.language, size: 16, color: Colors.grey),
        ],
      ),
      trailing: Icon(Icons.more_horiz, color: Colors.black, size: 26),
    );
  }
}
