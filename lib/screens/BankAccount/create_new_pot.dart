import 'package:finka/constants/colors.dart';
import 'package:finka/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class CreateNewPot extends StatefulWidget {
  @override
  _CreateNewPotState createState() => _CreateNewPotState();
}

class _CreateNewPotState extends State<CreateNewPot> {
  TextEditingController groupNameController = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  TextEditingController amountController = TextEditingController();

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
                  'Create new pot',
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
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Actiion call @',
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
                              hintText: 'Snus',
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
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Round up @',
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
                            controller: endDateController,
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
                              hintText: 'Default',
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
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  height: 20.h,
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
                        child: Image.asset("assets/icon/more_circle.png")),
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
                        child: Image.asset("assets/icon/more_circle.png")),
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
