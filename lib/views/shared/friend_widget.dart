import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class FriendWidget extends StatelessWidget {
  const FriendWidget({Key? key, this.screen = "friends"}) : super(key: key);

  final String screen;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: BorderDirectional(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey,
          ),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 52.sp,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image(
                  image: const AssetImage("assets/images/repath.png"),
                  height: 40.sp,
                ),
              ),
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "davdmoo",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "David Mulyawan",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Reykjavik",
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          screen == "friends"
              ? IconButton(
                  color: Colors.red,
                  icon: Icon(Icons.emoji_people, size: 25.sp),
                  onPressed: () => debugPrint("Remove friend"),
                )
              : screen == "requests"
                  ? IconButton(
                      color: Colors.blue,
                      icon: Icon(Icons.emoji_people, size: 25.sp),
                      onPressed: () => debugPrint("Accept friend request"),
                    )
                  : IconButton(
                      color: Colors.green,
                      icon: Icon(Icons.emoji_people, size: 25.sp),
                      onPressed: () => debugPrint("Add a friend"),
                    ),
        ],
      ),
    );
  }
}
