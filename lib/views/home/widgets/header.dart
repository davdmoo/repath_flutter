import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.sp,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/default_background.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white10,
          ),
          child: Image(
            image: const AssetImage("assets/images/dash.png"),
            height: 75.sp,
          ),
        ),
      ),
    );
  }
}
