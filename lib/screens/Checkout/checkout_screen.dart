import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/screens/MainTabBar.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatefulWidget {
  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _page = 0;

  double sliderVal = 0;

  @override
  Widget build(BuildContext context) {
    return _page == 0
        ? SafeArea(
            child: Scaffold(
              body: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 3.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(
                        Icons.cancel,
                        size: 10.w,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'CHECKOUT',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      'Contract',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      width: 100.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(4.w),
                        topRight: Radius.circular(4.w),
                      )),
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.w),
                              topRight: Radius.circular(4.w)),
                          child: Image.asset("assets/images/contract.png")),
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Text(
                          'View',
                          style: TextStyle(
                            color: purpleColor,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ).paddingOnly(
                          right: 2.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          trackHeight: 3.h,
                          thumbColor: Colors.white,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 4.w,
                          )),
                      child: Slider(
                        onChanged: (val) {
                          setState(() {
                            sliderVal = val;
                          });
                        },
                        value: sliderVal,
                        activeColor: purpleColor,
                        min: 0,
                        max: 1,
                        inactiveColor: Colors.grey[300],
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Swipe to sign',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ).paddingOnly(
                      left: 5.w,
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Calendar',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ).paddingOnly(
                          right: 2.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      '\$ 87.00',
                      style: TextStyle(
                        color: purpleColor,
                        fontSize: 27.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Text(
                      'PAYMENT METHOD',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'XXXX XXXX XXXX 2538',
                          style: TextStyle(
                            fontSize: 12.sp,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'Change',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ).paddingOnly(
                          right: 2.w,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    CustomButton2(
                      title: "CONFIRM ORDER",
                      height: 6.h,
                      width: 100.w,
                      color: purpleColor,
                      fontWeight: FontWeight.bold,
                      onpress: () {
                        setState(() {
                          _page = 2;
                        });
                      },
                      hMargin: 0.0,
                      borderRadius: 10.w,
                      textColor: Colors.white,
                      fontSize: 12.sp,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Skip for now',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Scaffold(
            backgroundColor: purpleColor,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.h,
                  width: double.infinity,
                ),
                Text(
                  'ORDER CONFIRMED!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Container(
                  width: 50.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/color_ball.png"))),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  'Hang on Tight! We’ve received your order and we’ll bring it to you ASAP!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ).paddingSymmetric(
                  horizontal: 5.w,
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomButton2(
                  title: "BACK TO HOME",
                  height: 6.h,
                  width: 100.w,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  onpress: () {
                    Get.offAll(() => HomeBottomTabs());
                  },
                  hMargin: 15.w,
                  borderRadius: 10.w,
                  textColor: Colors.deepOrangeAccent,
                  fontSize: 12.sp,
                ),
              ],
            ),
          );
  }
}
