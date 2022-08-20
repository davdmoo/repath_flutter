import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class PostInteractionRow extends StatelessWidget {
  const PostInteractionRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.sp,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            alignment: Alignment.centerRight,
            constraints: const BoxConstraints(
              maxWidth: 20,
            ),
            icon: const Icon(
              Icons.favorite,
              size: 15,
              color: Colors.red,
            ),
            onPressed: () => debugPrint("Like"),
          ),
          IconButton(
            alignment: Alignment.centerRight,
            constraints: const BoxConstraints(
              maxWidth: 20,
            ),
            icon: const Icon(
              Icons.comment,
              size: 15,
              color: Colors.blue,
            ),
            onPressed: () => debugPrint("Comment"),
          ),
          IconButton(
            alignment: Alignment.centerRight,
            constraints: const BoxConstraints(
              maxWidth: 20,
            ),
            icon: const Icon(
              Icons.delete,
              size: 15,
              color: Colors.grey,
            ),
            onPressed: () => debugPrint("Delete"),
          ),
        ],
      ),
    );
  }
}
