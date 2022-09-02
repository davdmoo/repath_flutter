import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class LocationPostContent extends StatelessWidget {
  const LocationPostContent({Key? key}) : super(key: key);

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
                      text: "Arrived in ",
                      style: TextStyle(fontSize: 12),
                    ),
                    TextSpan(
                      text: "Bandung",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
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
              image: const AssetImage("assets/images/repath.png"),
            ),
          ),
        ),
      ],
    );
  }
}
