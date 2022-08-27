import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import '../home/widgets/appbar.dart';
import '../home/widgets/drawer.dart';
import '../shared/friend_widget.dart';

class FriendRequestsScreen extends StatelessWidget {
  const FriendRequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.people, size: 30.sp),
                    const SizedBox(width: 10),
                    const Text("Friend Requests"),
                  ],
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (listContext, i) => const FriendWidget(screen: "requests"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
