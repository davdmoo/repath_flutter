import 'package:flutter/material.dart';

import 'widgets/appbar.dart';
import 'widgets/drawer.dart';
import 'widgets/header.dart';
import 'widgets/posts/post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Scaffold(
        // floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        drawer: const CustomDrawer(),
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (listContext, i) => const Post(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: theme.primaryColor,
          child: const Icon(Icons.add),
          onPressed: () => debugPrint("Add a post"),
        ),
        // floatingActionButton: ExpandableFab(
        //   distance: 100,
        //   initialOpen: false,
        //   children: [
        //     Material(
        //       shape: const CircleBorder(),
        //       clipBehavior: Clip.antiAlias,
        //       color: theme.secondaryHeaderColor,
        //       elevation: 4.0,
        //       child: IconButton(
        //         onPressed: () => debugPrint("Music post"),
        //         icon: Icon(Icons.music_note),
        //         color: theme.colorScheme.onSecondary,
        //       ),
        //     ),
        //   ],
        // ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 15,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.person_search),
            ),
            BottomNavigationBarItem(
              label: "Liked posts",
              icon: Icon(Icons.volunteer_activism_rounded),
            ),
            // BottomNavigationBarItem(
            //   label: "Profile",
            //   icon: Icon(Icons.person),
            // ),
          ],
        ),
      ),
    );
  }
}
