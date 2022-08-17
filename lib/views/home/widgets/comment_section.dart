import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class CommentSection extends StatelessWidget {
  const CommentSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.sp,
      width: 75.w,
      padding: EdgeInsets.all(5.sp),
      margin: EdgeInsets.all(3.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
