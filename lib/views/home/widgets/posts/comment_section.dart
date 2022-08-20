import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class CommentSection extends StatefulWidget {
  const CommentSection({Key? key}) : super(key: key);

  @override
  State<CommentSection> createState() => _CommentSectionState();
}

class _CommentSectionState extends State<CommentSection> {
  final List<Map<String, dynamic>> comments = [
    {
      "user": "David",
      "comment": "This is a comment",
      "createdAt": "2 months ago",
    },
    {
      "user": "User",
      "comment": "This is a comment 2",
      "createdAt": "2 minutes ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.sp,
      width: 75.w,
      padding: EdgeInsets.all(5.sp),
      margin: EdgeInsets.all(3.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListView.builder(
        itemCount: comments.length,
        itemBuilder: (listContext, i) => Container(
          margin: const EdgeInsets.only(bottom: 3),
          height: 22.sp,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  image: const AssetImage("assets/images/repath.png"),
                  height: 20.sp,
                ),
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "${comments[i]["user"]} ",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        TextSpan(
                          text: "${comments[i]["comment"]}",
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "${comments[i]["createdAt"]}",
                    style: const TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
