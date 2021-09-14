import 'package:finka/constants/colors.dart';
import 'package:finka/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class CreateSavingsGroup extends StatefulWidget {
  @override
  _CreateSavingsGroupState createState() => _CreateSavingsGroupState();
}

class _CreateSavingsGroupState extends State<CreateSavingsGroup> {
  TextEditingController groupNameController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  double sliderVal = 0;

  DateTime? startDate = DateTime.now();
  DateTime? endDate = DateTime.now();

  int selectedDuration = 0;

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
      child: Scaffold(
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
                  'Create Savings Group',
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
                  'Create new saving and invite others to join you towards that big goal.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(7.w)),
                  ),
                  color: purpleColor,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 2.h,
                      horizontal: 5.w,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contribution  800',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        ).paddingOnly(
                          top: 1.h,
                          left: 4.w,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sliderVal -= 50;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 5.w,
                                ),
                                padding: EdgeInsets.all(2.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: purpleColor,
                                  size: 6.w,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              '${sliderVal.toStringAsFixed(0)}',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 32.sp,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  sliderVal += 50;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  right: 5.w,
                                ),
                                padding: EdgeInsets.all(2.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: purpleColor,
                                  size: 6.w,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        SliderTheme(
                          data: SliderThemeData(
                              trackHeight: 1.h,
                              thumbColor: Colors.white,
                              thumbShape: RoundSliderThumbShape(
                                enabledThumbRadius: 3.5.w,
                              )),
                          child: Slider(
                            onChanged: (val) {
                              setState(() {
                                sliderVal = val;
                              });
                            },
                            value: sliderVal,
                            activeColor: Colors.white,
                            min: 0,
                            divisions: 100,
                            max: 1000,
                            inactiveColor: Colors.blueGrey[200],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Group Name',
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
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.w),
                        ),
                      ),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.top,
                        maxLines: 1,
                        controller: groupNameController,

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
                          hintText: 'Goal, reason etc....',
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
                        keyboardType: TextInputType.name,
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
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.w),
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.grey[300]!, width: 0.0),
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
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.w),
                                  ),
                                  borderSide: BorderSide(
                                      color: Colors.grey[300]!, width: 0.0),
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
                      title: "Invite Friends",
                      height: 6.h,
                      width: 70.w,
                      color: purpleColor,
                      fontWeight: FontWeight.bold,
                      onpress: () {
                        setState(() {});
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
      ),
    );
  }
}
