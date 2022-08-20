import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class LeftSection extends StatelessWidget {
  const LeftSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.black45, width: 2),
        ),
      ),
      width: 60.sp,
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(
        image: const AssetImage("assets/images/dash.png"),
        height: 35.sp,
      ),
    );
  }
}
