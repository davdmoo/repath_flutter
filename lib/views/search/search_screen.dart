import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import '../home/widgets/appbar.dart';
import '../home/widgets/drawer.dart';
import '../shared/custom_text_field.dart';
import '../shared/friend_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
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
                    SizedBox(
                      width: 60.w,
                      height: 50.sp,
                      child: CustomTextField(
                        borderColor: Theme.of(context).primaryColor,
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 20.sp,
                          ),
                          onPressed: () => debugPrint("Search"),
                        ),
                        controller: searchController,
                        label: "Search a friend",
                        textStyle: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (listContext, i) =>
                    const FriendWidget(screen: "search"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
