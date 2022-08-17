import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class LeftSection extends StatelessWidget {
  const LeftSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(top: 10),
      // color: Colors.blue,
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.black45, width: 2),
        ),
      ),
      width: 60.sp,
      height: double.infinity,
      alignment: Alignment.topCenter,
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Image(
      //       image: const AssetImage("assets/images/dash.png"),
      //       height: 35.sp,
      //     ),
      //     Stack(
      //       children: [
      //         Positioned(
      //           left: -15.sp,
      //           child: Image(
      //             image: const AssetImage("assets/images/dash.png"),
      //             height: 20.sp,
      //           ),
      //         ),
      //         const VerticalDivider(color: Colors.black38, thickness: 2.0),
      //       ],
      //     ),
      //   ],
      // ),
      child: Image(
        image: const AssetImage("assets/images/dash.png"),
        height: 35.sp,
      ),
    );
  }
}
