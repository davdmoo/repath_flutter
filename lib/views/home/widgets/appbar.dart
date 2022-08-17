import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, this.appBarHeight = kToolbarHeight}) : super(key: key);

  final double appBarHeight;

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          Image(
            image: const AssetImage("assets/images/dash.png"),
            height: 75.sp,
            width: 75.sp,
          ),
          IconButton(
            icon: const Icon(Icons.dark_mode_rounded),
            onPressed: () => debugPrint("Light/dark mode"),
          ),
        ],
      ),
    );
  }
}
