import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class MusicPostContent extends StatelessWidget {
  const MusicPostContent({Key? key}) : super(key: key);

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
                      text: "Listening to Glimpse of Us by ",
                      style: TextStyle(fontSize: 12),
                    ),
                    TextSpan(
                      text: "Joji",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
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
              image: const NetworkImage(
                "https://e-cdns-images.dzcdn.net/images/cover/1e1146f11ba53e8e0f8e456c722d94ae/500x500-000000-80-0-0.jpg",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
