import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'widgets/comment_section.dart';
import 'widgets/left_section.dart';
import 'widgets/likes_section.dart';
import 'widgets/music_content.dart';
import 'widgets/post_interaction_row.dart';
import 'widgets/appbar.dart';
import 'widgets/drawer.dart';
import 'widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          const Header(),
          Container(
            height: 150.sp,
            width: 100.w,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(242, 223, 226, 1),
            ),
            child: Row(
              children: [
                const LeftSection(),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.sp,
                        vertical: 5.sp,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          MusicPostContent(),
                          PostInteractionRow(),
                        ],
                      ),
                    ),
                    const LikesSection(),
                    const CommentSection(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => debugPrint("Add a post"),
      ),
    );
  }
}
