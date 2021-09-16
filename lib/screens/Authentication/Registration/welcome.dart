import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/constants/text_styles.dart';
import 'package:Kollektivet/screens/MainTabBar.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            child: Text(
              'Your account has been created.',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
              ),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          NextButton(
            height: 7.h,
            title: 'Start',
            width: 100.w,
            hMargin: 8.w,
            borderRadius: 3.w,
            fontSize: 13.sp,
            fontWeight: FontWeight.w500,
            onpress: () {
              Get.snackbar(
                  'Coming Soon', "Please login using test credentials");
            },
            color: Colors.white,
            textColor: Colors.black,
          ),
          SizedBox(
            height: 8.h,
          ),
        ],
      ),
    );
  }
}
