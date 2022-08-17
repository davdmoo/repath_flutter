import "package:flutter/material.dart";
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool obscurePassword = true;

  @override
  void initState() {
    super.initState();

    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    emailController.dispose();
    passwordController.dispose();
  }

  Future<void> login() async {
    try {
      debugPrint("Login - ${emailController.text} + ${passwordController.text}");

      Navigator.of(context).pushNamed("home");
    } catch (e) {
      return Future.error(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.red,
        child: Column(
          children: <Widget>[
            Image(
              image: const AssetImage("assets/images/dash.png"),
              height: 150.sp,
              width: 150.sp,
            ),
            const Text(
              "Share your wonderful moments with us",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                backgroundColor: Colors.transparent,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    // onSaved: onSaved,
                    // validator: validator,
                    controller: emailController,
                    // style: textTheme.bodyText1,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: const TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.sp,
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.sp),
                        ),
                        gapPadding: 4.sp,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.sp,
                          // color: AppColors.errorColor,
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.sp),
                        ),
                        gapPadding: 4.sp,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.sp,
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.sp),
                        ),
                        gapPadding: 4.sp,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.sp,
                          // color: AppColors.greyColor,
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.sp),
                        ),
                        gapPadding: 4.sp,
                      ),
                      hintText: "Input text",
                      hintStyle: const TextStyle(color: Colors.grey),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    obscureText: obscurePassword,
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.remove_red_eye, color: Colors.white),
                        onPressed: () {
                          setState(() => obscurePassword = !obscurePassword);
                        },
                      ),
                      labelText: "Password",
                      labelStyle: const TextStyle(color: Colors.white),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.sp,
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.sp),
                        ),
                        gapPadding: 4.sp,
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.sp,
                          // color: AppColors.errorColor,
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.sp),
                        ),
                        gapPadding: 4.sp,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.sp,
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.sp),
                        ),
                        gapPadding: 4.sp,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1.sp,
                          // color: AppColors.greyColor,
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(2.sp),
                        ),
                        gapPadding: 4.sp,
                      ),
                      hintText: "Input text",
                      hintStyle: const TextStyle(color: Colors.white30),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: 40.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      child: const Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      onPressed: login,
                    ),
                  ),
                  const Text(
                    "Don't have an account yet?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: 40.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        side: const BorderSide(color: Colors.white),
                      ),
                      child: const Center(
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      onPressed: login,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
