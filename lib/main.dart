import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'views/auth/login_screen.dart';
import 'views/home/home_screen.dart';

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
        ),
        home: const LoginScreen(),
        routes: {
          "home": (context) => const HomeScreen(),
        },
      ),
    );
  }
}
