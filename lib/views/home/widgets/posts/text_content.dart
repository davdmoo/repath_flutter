import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class TextPostContent extends StatelessWidget {
  const TextPostContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 125.sp,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: "This is a text + image content",
                      style: TextStyle(fontSize: 12),
                    ),
                    // WidgetSpan()
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "Glimpse of Us",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
              const Text(
                "1 week ago",
                style: TextStyle(color: Colors.grey, fontSize: 10),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5.sp),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image(
              width: 35.sp,
              fit: BoxFit.cover,
              image: const AssetImage("assets/images/repath.png"),
            ),
          ),
        ),
      ],
    );
  }
}
