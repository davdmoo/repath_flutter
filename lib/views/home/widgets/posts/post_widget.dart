import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import 'comment_section.dart';
import 'left_section.dart';
import 'likes_section.dart';
import 'music_content.dart';
import 'post_interaction_row.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      MusicPostContent(), // add a conditional on types of content (text + image, location contents)
                      PostInteractionRow(),
                    ],
                  ),
                ),
                const LikesSection(),
                const CommentSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
