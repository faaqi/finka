import 'dart:developer';

import 'package:finka/constants/colors.dart';
import 'package:finka/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';

class JoinSavingsGroup extends StatefulWidget {
  @override
  _JoinSavingsGroupState createState() => _JoinSavingsGroupState();
}

class _JoinSavingsGroupState extends State<JoinSavingsGroup> {
  TextEditingController numRoundsController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  DateTime? startDate = DateTime.now();
  DateTime? endDate = DateTime.now();

  int _page = 0;

  int selectedDuration = 0;

  double sliderVal = 0;

  Future<DateTime> _showStartDatePicker(ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Material(
              child: Container(
                height: 50.h,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Text(
                      'Select Start Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ).paddingOnly(
                      top: 2.h,
                    ),
                    Container(
                      height: 38.h,
                      child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime.now(),
                          maximumDate: DateTime(2025, 12),
                          minimumDate: DateTime(2020, 12),
                          onDateTimeChanged: (val) {
                            setState(() {
                              startDateController.text =
                                  DateFormat('d/M/y').format(val);
                            });
                          }),
                    ),

                    // Close the modal
                    CupertinoButton(
                      child: Text('Done'),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    )
                  ],
                ),
              ),
            ));

    return Future.value(startDate!);
  }

  Future<DateTime> _showEndDatePicker(ctx) {
    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Material(
              child: Container(
                height: 50.h,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Text(
                      'Select End Date',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: Colors.black,
                      ),
                    ).paddingOnly(
                      top: 2.h,
                    ),
                    Container(
                      height: 38.h,
                      child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.date,
                          initialDateTime: DateTime.now(),
                          maximumDate: DateTime(2025, 12),
                          minimumDate: DateTime(2020, 12),
                          onDateTimeChanged: (val) {
                            setState(() {
                              endDateController.text =
                                  DateFormat('d/M/y').format(val);
                            });
                          }),
                    ),

                    // Close the modal
                    CupertinoButton(
                      child: Text('Done'),
                      onPressed: () {
                        Get.back();
                      },
                    )
                  ],
                ),
              ),
            ));
    return Future.value(endDate!);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: _page == 0
          ? Scaffold(
              body: SingleChildScrollView(
                child: Padding(
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
                        height: 2.h,
                      ),
                      Text(
                        'Join Savings Group',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Join trusted saving groups and enjoy the journey ;)',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Center(
                        child: Container(
                          width: 70.w,
                          height: 28.h,
                          child: Image.asset(
                            'assets/images/savings_group.png',
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ROUNDS AVAILABLE',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                            ),
                          ).paddingOnly(
                            left: 3.w,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            width: 40.w,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.w),
                              ),
                            ),
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.top,
                              maxLines: 1,
                              controller: numRoundsController,

                              onFieldSubmitted: (val) {},
                              // validator: (value) => value.isEmpty
                              //     ? 'Enter a name to search'
                              //     : RegExp(r'[,.!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]')
                              //             .hasMatch(value)
                              //         ? 'Enter a Valid Name'
                              //         : null,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                contentPadding: EdgeInsets.only(
                                  top: 10,
                                  left: 20,
                                ),
                                hintText: '10',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.w),
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.grey[300]!, width: 0.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.w),
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.grey[300]!, width: 0.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.w),
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.grey[300]!, width: 0.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.w),
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.grey[300]!, width: 0.0),
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              style: TextStyle(color: Colors.black),
                              cursorColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'START DATE',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.sp,
                                ),
                              ).paddingOnly(
                                left: 3.w,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              InkWell(
                                onTap: () {
                                  _showStartDatePicker(context);
                                },
                                child: Container(
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.w),
                                    ),
                                  ),
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.top,
                                    maxLines: 1,
                                    enabled: false,
                                    controller: startDateController,

                                    onFieldSubmitted: (val) {},
                                    // validator: (value) => value.isEmpty
                                    //     ? 'Enter a name to search'
                                    //     : RegExp(r'[,.!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]')
                                    //             .hasMatch(value)
                                    //         ? 'Enter a Valid Name'
                                    //         : null,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsets.only(
                                        top: 20.0,
                                        left: 20,
                                      ),
                                      hintText: 'DD/MM/YYYY',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                    ),
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.5.sp,
                                    ),
                                    cursorColor: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'END DATE',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.sp,
                                ),
                              ).paddingOnly(
                                left: 3.w,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              InkWell(
                                onTap: () {
                                  _showEndDatePicker(context);
                                },
                                child: Container(
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(10.w),
                                    ),
                                  ),
                                  child: TextFormField(
                                    textAlignVertical: TextAlignVertical.top,
                                    maxLines: 1,
                                    controller: endDateController,
                                    enabled: false,
                                    onFieldSubmitted: (val) {},
                                    // validator: (value) => value.isEmpty
                                    //     ? 'Enter a name to search'
                                    //     : RegExp(r'[,.!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]')
                                    //             .hasMatch(value)
                                    //         ? 'Enter a Valid Name'
                                    //         : null,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      contentPadding: EdgeInsets.only(
                                        top: 20.0,
                                        left: 20,
                                      ),
                                      hintText: 'DD/MM/YYYY',
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 11.sp,
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                      disabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.w),
                                        ),
                                        borderSide: BorderSide(
                                            color: Colors.grey[300]!,
                                            width: 0.0),
                                      ),
                                    ),
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.5.sp,
                                    ),
                                    cursorColor: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        height: 12.h,
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PAYMENT AMOUNT',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10.sp,
                                    ),
                                  ).paddingOnly(
                                    left: 3.w,
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Container(
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.w),
                                      ),
                                    ),
                                    child: TextFormField(
                                      textAlignVertical: TextAlignVertical.top,
                                      maxLines: 1,
                                      controller: amountController,

                                      onFieldSubmitted: (val) {},
                                      // validator: (value) => value.isEmpty
                                      //     ? 'Enter a name to search'
                                      //     : RegExp(r'[,.!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]')
                                      //             .hasMatch(value)
                                      //         ? 'Enter a Valid Name'
                                      //         : null,
                                      decoration: InputDecoration(
                                        fillColor: Colors.white,
                                        contentPadding: EdgeInsets.only(
                                          top: 10,
                                          left: 20,
                                        ),
                                        hintText: '1000',
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12.sp,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.w),
                                          ),
                                          borderSide: BorderSide(
                                              color: Colors.grey[300]!,
                                              width: 0.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.w),
                                          ),
                                          borderSide: BorderSide(
                                              color: Colors.grey[300]!,
                                              width: 0.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.w),
                                          ),
                                          borderSide: BorderSide(
                                              color: Colors.grey[300]!,
                                              width: 0.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.w),
                                          ),
                                          borderSide: BorderSide(
                                              color: Colors.grey[300]!,
                                              width: 0.0),
                                        ),
                                      ),
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(color: Colors.black),
                                      cursorColor: Colors.black,
                                    ),
                                  ),
                                ],
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
                                      width: 8.w,
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
                                        'W',
                                        style: TextStyle(
                                          color: selectedDuration == 1
                                              ? Colors.white
                                              : Color(0xff738AA9),
                                          fontSize: 12.sp,
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
                                      width: 8.w,
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
                                        'M',
                                        style: TextStyle(
                                          color: selectedDuration == 2
                                              ? Colors.white
                                              : Color(0xff738AA9),
                                          fontSize: 12.sp,
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
                                      width: 8.w,
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
                                        'Q',
                                        style: TextStyle(
                                          color: selectedDuration == 3
                                              ? Colors.white
                                              : Color(0xff738AA9),
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                padding: EdgeInsets.all(2.w),
                                decoration: BoxDecoration(
                                  color: purpleColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3.w),
                                  ),
                                ),
                                width: 12.w,
                                height: 12.w,
                                child: Image.asset(
                                    "assets/icon/messenger_white_icon.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Row(
                        children: [
                          CustomButton2(
                            title: "JOIN",
                            height: 6.h,
                            width: 70.w,
                            color: purpleColor,
                            fontWeight: FontWeight.bold,
                            onpress: () {
                              setState(() {
                                _page = 1;
                              });
                            },
                            hMargin: 0.0,
                            borderRadius: 10.w,
                            textColor: Colors.white,
                            fontSize: 12.sp,
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(2.5.w),
                            decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.all(
                                Radius.circular(3.w),
                              ),
                            ),
                            width: 11.5.w,
                            height: 11.5.w,
                            child: Image.asset("assets/icon/send_icon.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          : _page == 1
              ? Scaffold(
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
                                image: AssetImage(
                                    "assets/images/color_ball.png"))),
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
                          Get.back();
                        },
                        hMargin: 15.w,
                        borderRadius: 10.w,
                        textColor: Colors.deepOrangeAccent,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                ),
    );
  }
}
