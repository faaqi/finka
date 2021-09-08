import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'MainTabBar.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(HomeBottomTabs());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: 100.w,
        height: 100.h,
        child: Center(
            child: Text(
          'Breweries',
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.w,
          ),
        )),
      ),
    );
  }
}
