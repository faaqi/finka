import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/widgets/CustomDashboardDesign.dart';

class Rewards extends StatefulWidget {
  final BuildContext? menuScreenContext;
  final Function? onScreenHideButtonPressed;
  final bool? hideStatus;
  const Rewards(
      {Key? key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
  TextEditingController searchTextController = TextEditingController();
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
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.5.h,
                        left: 5.w,
                      ),
                      child: Text(
                        "Rewards",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            height: 15.h,
                            width: 30.w,
                            child: Image.asset("assets/icon/scan_icon.png")),
                        Container(
                            height: 15.h,
                            width: 30.w,
                            child: Image.asset("assets/icon/explore_icon.png")),
                        Container(
                            height: 15.h,
                            width: 30.w,
                            child:
                                Image.asset("assets/icon/add_friend_icon.png")),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                            height: 2.5.h,
                            width: 2.5.h,
                            child: Image.asset("assets/icon/save_icon.png")),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'Right on Time',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 26.h,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(
                            left: 4.w,
                            right: 4.w,
                            top: 2.5.h,
                          ),
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 1.5.w,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      width: 50.w,
                                      height: 15.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2.w)),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2.w)),
                                        child: Image.asset(
                                          "assets/images/download.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                  SizedBox(
                                    height: 2.w,
                                  ),
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.w,
                                  ),
                                  Text(
                                    'Category',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                            height: 2.5.h,
                            width: 2.5.h,
                            child: Image.asset("assets/icon/vouchers.png")),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'Vouchers',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          vertical: 2.h,
                          horizontal: 5.w,
                        ),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 2.h,
                          crossAxisSpacing: 4.w,
                          childAspectRatio: 0.7,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, indesx) {
                          return Container(
                            decoration: BoxDecoration(
                                color: cardBgColour,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.w))),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 3.h,
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
                                          "assets/images/download.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Text(
                                  "20% discount",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Text(
                                  "For 1000 Points",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 9.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 2.5.h,
                                ),
                                CustomButton2(
                                  height: 5.h,
                                  width: 28.w,
                                  borderRadius: 2.w,
                                  fontWeight: FontWeight.w500,
                                  title: 'Redeem Now',
                                  fontSize: 10.sp,
                                  hMargin: 0.0,
                                  onpress: () {},
                                ),
                                SizedBox(
                                  height: 1.5.h,
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
