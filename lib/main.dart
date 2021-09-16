import 'package:Kollektivet/screens/Authentication/login.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
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
        title: 'Kollektivet',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Login(),
      );
    });
  }
}
