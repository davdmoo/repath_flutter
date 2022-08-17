import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.red,
        child: ListView(
          padding: EdgeInsets.zero,
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
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
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
      ),
      body: Column(
        children: [
          const Header(),
          Container(
            height: 150.sp,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(242, 223, 226, 1),
            ),
            child: Row(
              children: [
                Container(
                  // padding: const EdgeInsets.only(top: 10),
                  // color: Colors.blue,
                  decoration: const BoxDecoration(
                    border: Border(
                      right: BorderSide(color: Colors.black45, width: 2),
                    ),
                  ),
                  width: 75.sp,
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
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Listening to song's name by artist's name"),
                        Text("The album name"),
                        Text("1 week ago"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => debugPrint("Add a post"),
      ),
    );
  }
}
