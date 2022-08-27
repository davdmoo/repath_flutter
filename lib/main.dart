import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'views/auth/login_screen.dart';
import 'views/home/home_screen.dart';
import 'views/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: const Color.fromRGBO(220, 38, 38, 1),
          secondaryHeaderColor: const Color.fromRGBO(242, 223, 226, 1),
        ),
        home: const LoginScreen(),
        routes: {
          "/home": (context) => const HomeScreen(),
          "/profile": (context) => const ProfileScreen(),
        },
      ),
    );
  }
}
