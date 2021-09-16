import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class AddTransaction extends StatefulWidget {
  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  TextEditingController groupNameController = TextEditingController();

  double sliderVal = 0;

  bool clickUp = false;

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
                  height: 6.h,
                ),
                Text(
                  'TRANSACTION ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
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
                          hintText: 'Whatfor!.....',
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
                          height: 6.h,
                        ),
//                        SliderTheme(
//                          data: SliderThemeData(
//                              trackHeight: 1.h,
//                              thumbColor: Colors.white,
//                              thumbShape: RoundSliderThumbShape(
//                                enabledThumbRadius: 3.5.w,
//                              )),
//                          child: Slider(
//                            onChanged: (val) {
//                              setState(() {
//                                sliderVal = val;
//                              });
//                            },
//                            value: sliderVal,
//                            activeColor: Colors.white,
//                            min: 0,
//                            divisions: 100,
//                            max: 1000,
//                            inactiveColor: Colors.blueGrey[200],
//                          ),
//                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        height: 10.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.w),
                          ),
                        ),
                        padding: EdgeInsets.all(3.w),
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                          size: 10.w,
                        )),
                    Container(
                      height: 10.h,
                      width: 20.w,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.w),
                        ),
                      ),
                      padding: EdgeInsets.all(3.w),
                      child: Icon(
                        Icons.arrow_downward,
                        color: Colors.white,
                        size: 10.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
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
      ),
    );
  }
}
