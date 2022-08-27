import "package:flutter/material.dart";

import '../home/widgets/appbar.dart';
import '../home/widgets/drawer.dart';
import '../home/widgets/posts/post_widget.dart';

class LikesScreen extends StatelessWidget {
  const LikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (listContext, i) => const Post(
              likesScreen: true,
            ),
          ),
        ),
      ),
    );
  }
}
