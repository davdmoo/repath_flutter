import "package:flutter/material.dart";
import "package:sizer/sizer.dart";

import '../home/widgets/appbar.dart';
import '../home/widgets/drawer.dart';
import '../shared/custom_button.dart';
import '../shared/custom_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final headerController = TextEditingController();
  final usernameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        appBar: const CustomAppBar(),
        drawer: const CustomDrawer(),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: const AssetImage("assets/images/repath.png"),
                  maxRadius: 38.sp,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 45.w,
                      child: CustomTextField(
                        controller: firstNameController,
                        label: "First Name",
                      ),
                    ),
                    SizedBox(
                      width: 45.w,
                      child: CustomTextField(
                        controller: lastNameController,
                        label: "Last Name",
                      ),
                    ),
                  ],
                ),
                CustomTextField(
                  controller: headerController,
                  label: "Header's Image URL",
                ),
                CustomTextField(
                  controller: usernameController,
                  label: "Username",
                ),
                CustomTextField(
                  controller: phoneNumberController,
                  label: "Phone Number",
                ),
                CustomTextField(
                  controller: cityController,
                  label: "City",
                ),
                CustomButton(
                  label: "Save",
                  onPressed: () => debugPrint("Save"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
