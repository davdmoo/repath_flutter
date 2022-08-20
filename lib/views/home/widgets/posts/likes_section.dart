import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class LikesSection extends StatelessWidget {
  const LikesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.sp,
      width: 75.w,
      padding: EdgeInsets.all(5.sp),
      margin: EdgeInsets.all(2.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: const AssetImage("assets/images/dash.png"),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Positioned(
                  right: 4.sp,
                  bottom: -1.sp,
                  child: ConstrainedBox(
                    child: Icon(
                      Icons.favorite,
                      size: 10.sp,
                      color: Colors.red,
                    ),
                    constraints: BoxConstraints(maxWidth: 10.sp),
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: const AssetImage("assets/images/dash.png"),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Positioned(
                  right: 4.sp,
                  bottom: -1.sp,
                  child: ConstrainedBox(
                    child: Icon(
                      Icons.favorite,
                      size: 10.sp,
                      color: Colors.red,
                    ),
                    constraints: BoxConstraints(maxWidth: 10.sp),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
