import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/screens/BankAccount/add_new_card.dart';
import 'package:Kollektivet/screens/BankAccount/add_transaction.dart';
import 'package:Kollektivet/screens/BankAccount/create_new_pot.dart';
import 'package:Kollektivet/screens/BankAccount/create_savings_group.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:Kollektivet/widgets/CustomDashboardDesign.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class BankAccount extends StatefulWidget {
  @override
  _BankAccountState createState() => _BankAccountState();
}

class _BankAccountState extends State<BankAccount> {
  int selectedDuration = 0;

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
                              height: 6.5.h,
                              width: 30.w,
                              fontWeight: FontWeight.w500,
                              borderRadius: 8.w,
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
                        InkWell(
                          onTap: () {
                            Get.to(() => AddNewCard());
                          },
                          child: Text(
                            "+ Add account",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => CreateSavingsGroup());
                          },
                          child: Container(
                              height: 15.h,
                              width: 30.w,
                              child: Image.asset("assets/icon/group_btn.png")),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => AddTransaction());
                          },
                          child: Container(
                              height: 15.h,
                              width: 30.w,
                              child: Image.asset(
                                  "assets/icon/transactions_btn.png")),
                        ),
                        Container(
                            height: 15.h,
                            width: 30.w,
                            child: Image.asset("assets/icon/swap_btn.png")),
                      ],
                    ),
                    Row(
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
                        Spacer(),
                        InkWell(
                          onTap: () {
                            Get.to(() => CreateNewPot());
                          },
                          child: Text(
                            "+ New pot",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ).paddingOnly(
                            right: 8.w,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 28.h,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                            vertical: 3.h,
                            horizontal: 5.w,
                          ),
                          shrinkWrap: true,
                          itemCount: 3,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, indesx) {
                            return Container(
                              width: 42.w,
                              margin: EdgeInsets.symmetric(
                                horizontal: 3.w,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.w,
                              ),
                              decoration: BoxDecoration(
                                  color: cardBgColour,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.w))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2.w),
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(3.w),
                                          ),
                                        ),
                                        width: 10.w,
                                        height: 10.w,
                                        child: Image.asset(
                                            "assets/icon/more_circle.png"),
                                      ),
                                      Spacer(),
                                      Container(
                                        width: 6.w,
                                        height: 6.w,
                                        child: Image.asset(
                                            "assets/icon/time_square.png"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3.5.h,
                                  ),
                                  Text(
                                    "Karpe concert",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                            text: '300',
                                            style: TextStyle(
                                              fontSize: 11.0.sp,
                                              color: Colors.deepOrangeAccent,
                                            )),
                                        TextSpan(
                                            text: '/1200',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 11.0.sp,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {}),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.5.h,
                                  ),
                                  LinearPercentIndicator(
                                    width: 32.w,
                                    lineHeight: 1.2.h,
                                    animationDuration: 200,
                                    backgroundColor: Colors.blue,
                                    progressColor: purpleColor,
                                    percent: 0.5,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Row(
                      children: [
                        Text(
                          "History",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedDuration = 1;
                                });
                              },
                              child: Container(
                                width: 10.w,
                                decoration: BoxDecoration(
                                  color: selectedDuration == 1
                                      ? purpleColor
                                      : Color(0xffE8F1FD),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(1.5.w),
                                  ),
                                ),
                                padding: EdgeInsets.all(2.w),
                                child: Text(
                                  'Da',
                                  style: TextStyle(
                                    color: selectedDuration == 1
                                        ? Colors.white
                                        : Color(0xff738AA9),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedDuration = 2;
                                });
                              },
                              child: Container(
                                width: 10.w,
                                decoration: BoxDecoration(
                                  color: selectedDuration == 2
                                      ? purpleColor
                                      : Color(0xffE8F1FD),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(1.5.w),
                                  ),
                                ),
                                padding: EdgeInsets.all(2.w),
                                child: Text(
                                  'Wk',
                                  style: TextStyle(
                                    color: selectedDuration == 2
                                        ? Colors.white
                                        : Color(0xff738AA9),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedDuration = 3;
                                });
                              },
                              child: Container(
                                width: 10.w,
                                decoration: BoxDecoration(
                                  color: selectedDuration == 3
                                      ? purpleColor
                                      : Color(0xffE8F1FD),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(1.5.w),
                                  ),
                                ),
                                padding: EdgeInsets.all(2.w),
                                child: Text(
                                  'Mn',
                                  style: TextStyle(
                                    color: selectedDuration == 3
                                        ? Colors.white
                                        : Color(0xff738AA9),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 2.w,
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedDuration = 4;
                                });
                              },
                              child: Container(
                                width: 10.w,
                                decoration: BoxDecoration(
                                  color: selectedDuration == 4
                                      ? purpleColor
                                      : Color(0xffE8F1FD),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(1.5.w),
                                  ),
                                ),
                                padding: EdgeInsets.all(2.w),
                                child: Text(
                                  'Yr',
                                  style: TextStyle(
                                    color: selectedDuration == 4
                                        ? Colors.white
                                        : Color(0xff738AA9),
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ).paddingSymmetric(
                      horizontal: 5.w,
                    ),
                    Flexible(
                      child: ListView.builder(
                          itemCount: 10,
                          padding: EdgeInsets.symmetric(
                            vertical: 1.h,
                          ),
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: Container(
                                width: 12.w,
                                height: 12.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index % 2 == 0
                                      ? Color(0xffFDE8EA)
                                      : cardBgColour,
                                ),
                                child: index % 2 == 0
                                    ? Icon(
                                        Icons.arrow_upward,
                                        color: Colors.deepOrangeAccent,
                                      )
                                    : Icon(
                                        Icons.arrow_downward,
                                        color: Colors.deepPurpleAccent[100],
                                      ),
                              ),
                              title: Text(
                                index % 2 == 0 ? "Withdrawal" : "Savings",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp,
                                ),
                              ),
                              subtitle: Text(
                                "10 Oct 2021",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10.sp,
                                ),
                              ),
                              trailing: Text(
                                index % 2 == 0 ? '- \$423.43' : '\$423.43',
                                style: TextStyle(
                                  color: index % 2 == 0
                                      ? Colors.deepOrangeAccent
                                      : Colors.black38,
                                ),
                              ),
                            );
                          }),
                    ),
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
