import 'package:finka/constants/colors.dart';
import 'package:finka/widgets/CustomButton.dart';
import 'package:finka/widgets/CustomDashboardDesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class BankAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              CustomPaint(
                size: Size(100.w, (100.w * 1.256).toDouble()),
                painter: CustomDashboardDesign(),
              ),
              Positioned(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    ListTile(
                      leading: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 2.w),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.w)),
                              border: Border.all(
                                color: Colors.white,
                                width: 0.5.w,
                              )),
                          padding: EdgeInsets.all(1.w),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 5.5.w,
                          ),
                        ),
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 3.w),
                          width: 6.w,
                          child:
                              Image.asset('assets/icon/notification_icon.png'),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 1.5.h,
                                left: 5.w,
                              ),
                              child: Text(
                                "Bank",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            CustomButton2(
                              color: Colors.white,
                              height: 7.h,
                              width: 30.w,
                              fontWeight: FontWeight.w500,
                              borderRadius: 5.w,
                              onpress: () {},
                              hMargin: 0.w,
                              fontSize: 12.sp,
                              title: "Balance",
                              textColor: purpleColor,
                            ).paddingOnly(
                              left: 7.w,
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          "+ Add account",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ).paddingOnly(
                          right: 8.w,
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 16.h,
                                width: 25.w,
                                child: Image.asset(
                                    "assets/icon/catalog_icon.png")),
                            Container(
                                height: 16.h,
                                width: 25.w,
                                child:
                                    Image.asset("assets/icon/cart_icon.png")),
                            Container(
                                height: 16.h,
                                width: 25.w,
                                child: Image.asset(
                                    "assets/icon/calendar_icon.png")),
                            Container(
                                height: 16.h,
                                width: 25.w,
                                child: Image.asset(
                                    "assets/icon/calendar_icon.png")),
                          ],
                        ),
                        Positioned(
                            bottom: 0,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 5.w,
                                ),
                                Container(
                                    height: 2.5.h,
                                    width: 2.5.h,
                                    child: Image.asset(
                                        "assets/icon/shield_tick_icon.png")),
                                SizedBox(
                                  width: 1.w,
                                ),
                                Text(
                                  'Savings Pots',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Text(
                            "+ New pot",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ).paddingOnly(
                            right: 8.w,
                          ),
                        ),
                      ],
                    ),
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          vertical: 3.h,
                          horizontal: 5.w,
                        ),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 2.h,
                          crossAxisSpacing: 4.w,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, indesx) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[50],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.w))),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 2.h,
                                ),
                                Center(
                                  child: Container(
                                      width: 10.h,
                                      height: 10.h,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.w),
                                        ),
                                        child: Image.asset(
                                          "assets/images/pic.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Text(
                                  "Hood Cap",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "\$100.0",
                                  style: TextStyle(
                                    color: purpleColor,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
