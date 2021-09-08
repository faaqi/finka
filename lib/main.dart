import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:finka/screens/splash.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Finka',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Splash(),
      );
    });
  }
}