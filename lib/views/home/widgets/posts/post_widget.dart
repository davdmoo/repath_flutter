import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import 'comment_section.dart';
import 'left_section.dart';
import 'likes_section.dart';
import 'location_content.dart';
import 'music_content.dart';
import 'post_interaction_row.dart';
import 'text_content.dart';

class Post extends StatelessWidget {
  const Post({
    Key? key,
    this.likesScreen = false,
    this.postType = "text",
  }) : super(key: key);

  final bool likesScreen;
  final String postType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: likesScreen ? 55.sp : 150.sp,
      width: 100.w,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(242, 223, 226, 1),
      ),
      child: Stack(
        children: [
          const LeftSection(),
          FractionalTranslation(
            translation: const Offset(1.5, 0.4),
            child: SizedBox(
              height: 16.sp,
              child: CircleAvatar(
                child: Icon(Icons.music_note_outlined, size: 12.sp),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 60.sp),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.sp,
                    vertical: 5.sp,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      postType == "music"
                        ? const MusicPostContent()
                        : postType == "text"
                          ? const TextPostContent()
                          : const LocationPostContent(),
                      Visibility(
                        visible: !likesScreen,
                        child: const PostInteractionRow(),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: !likesScreen,
                  child: const LikesSection(),
                ),
                Visibility(
                  visible: !likesScreen,
                  child: const CommentSection(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
