import "package:flutter/material.dart";
import 'package:sizer/sizer.dart';

import '../../../helpers/navigation.dart';
import '../../friend_requests/friend_requests_screen.dart';
import '../../friends/friends_screen.dart';
import '../../likes/likes_screen.dart';
import '../../profile/profile_screen.dart';
import '../../search/search_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      child: ListView(
        padding: EdgeInsets.only(left: 10.sp),
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: const AssetImage("assets/images/dash.png"),
                  height: 100.sp,
                  width: 100.sp,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Username",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text("User's email"),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).pushNamed("/home");
            },
            leading: const Icon(Icons.home),
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () => navigateNoAnimation(
              context,
              const ProfileScreen(),
            ),
            leading: const Icon(Icons.person),
          ),
          ListTile(
            title: const Text('Liked Posts'),
            onTap: () => navigateNoAnimation(
              context,
              const LikesScreen(),
            ),
            leading: const Icon(Icons.volunteer_activism_rounded),
          ),
          ListTile(
            title: const Text('Friends'),
            onTap: () => navigateNoAnimation(
              context,
              const FriendsScreen(),
            ),
            leading: const Icon(Icons.favorite_rounded),
          ),
          ListTile(
            title: const Text('Friend Requests'),
            onTap: () => navigateNoAnimation(
              context,
              const FriendRequestsScreen(),
            ),
            leading: const Icon(Icons.person_pin_rounded),
          ),
          ListTile(
            title: const Text('Search'),
            onTap: () => navigateNoAnimation(
              context,
              const SearchScreen(),
            ),
            leading: const Icon(Icons.person_search),
          ),
        ],
      ),
    );
  }
}
