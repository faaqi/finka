import 'dart:async';

import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/constants/text_styles.dart';
import 'package:Kollektivet/screens/Authentication/Registration/personal_info.dart';
import 'package:Kollektivet/screens/Authentication/Registration/welcome.dart';
import 'package:Kollektivet/screens/Authentication/login.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class SetPin extends StatefulWidget {
  @override
  _SetPinState createState() => _SetPinState();
}

class _SetPinState extends State<SetPin> {
  TextEditingController passwordController = TextEditingController();
  StreamController<ErrorAnimationType> errorPasswordController =
      StreamController<ErrorAnimationType>();

  TextEditingController confirmPasswordController = TextEditingController();
  StreamController<ErrorAnimationType> errorConfirmPasswordController =
      StreamController<ErrorAnimationType>();

  final formKey = GlobalKey<FormState>();

  bool validateAndSave() {
    final form = formKey.currentState;

    if (form!.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Scaffold(
      backgroundColor: purpleColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.w))),
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 4.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                    ),
                    child: Text(
                      'Set your PIN',
                      style: registrationHeaderStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 3.h,
                    ),
                    child: Text(
                      'Set your password with maximum 8 characters with at least 1 capital letter, 1 number and 1 symbol.',
                      style: registrationSubHeadingStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Define your password',
                    style: textFormFieldsHeadings,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.w,
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 8,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      cursorColor: purpleColor,
                      textStyle: TextStyle(
                        color: purpleColor,
                        fontSize: 13.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
//                        borderRadius: BorderRadius.circular(3.0.w),
                        fieldHeight: 8.0.h,
                        fieldWidth: 8.0.w,
                        activeFillColor: Colors.white,
                        disabledColor: Colors.white,
                        activeColor: purpleColor,
                        inactiveColor: Colors.grey,
//                        borderWidth: 2,
                        inactiveFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                        selectedColor: purpleColor,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      errorAnimationController: errorPasswordController,
                      controller: passwordController,
                      onCompleted: (v) {
                        // print("Completed");
                      },
                      onChanged: (value) {
                        // print(value);
                        // setState(() {
                        //   // currentText = value;
                        // });
                      },
                      beforeTextPaste: (text) {
                        // print("Allowing to paste $text");
                        return true;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Confirm your password',
                    style: textFormFieldsHeadings,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.w,
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 8,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      cursorColor: purpleColor,
                      textStyle: TextStyle(
                        color: purpleColor,
                        fontSize: 13.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
//                        borderRadius: BorderRadius.circular(3.0.w),
                        fieldHeight: 8.0.h,
                        fieldWidth: 8.0.w,
                        activeFillColor: Colors.white,
                        disabledColor: Colors.white,
                        activeColor: purpleColor,
                        inactiveColor: Colors.grey,
//                        borderWidth: 2,
                        inactiveFillColor: Colors.white,
                        selectedFillColor: Colors.white,
                        selectedColor: purpleColor,
                      ),
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.transparent,
                      enableActiveFill: true,
                      errorAnimationController: errorConfirmPasswordController,
                      controller: confirmPasswordController,
                      onCompleted: (v) {
                        // print("Completed");
                      },
                      onChanged: (value) {
                        // print(value);
                        // setState(() {
                        //   // currentText = value;
                        // });
                      },
                      beforeTextPaste: (text) {
                        // print("Allowing to paste $text");
                        return true;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  NextButton(
                    height: 7.h,
                    title: 'Next',
                    width: 100.w,
                    hMargin: 8.w,
                    borderRadius: 3.w,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    onpress: () {
                      Get.to(() => Welcome());
                    },
                    color: purpleColor,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
