import 'dart:async';

import 'package:finka/constants/colors.dart';
import 'package:finka/constants/text_styles.dart';
import 'package:finka/screens/Authentication/Registration/personal_info.dart';
import 'package:finka/screens/Authentication/login.dart';
import 'package:finka/widgets/CustomButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sizer/sizer.dart';

class ConfirmCode extends StatefulWidget {
  @override
  _ConfirmCodeState createState() => _ConfirmCodeState();
}

class _ConfirmCodeState extends State<ConfirmCode> {
  TextEditingController otpController = TextEditingController();
  StreamController<ErrorAnimationType> errorController =
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
                      'Confirmation code has been sent to your mobile and e-mail',
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
                      'The code has been sent to +44916540021 and second portion to yourmail@gmail.com.Please enter the code below.',
                      style: registrationSubHeadingStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.w,
                    ),
                    child: PinCodeTextField(
                      appContext: context,
                      length: 6,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      keyboardType: TextInputType.number,
                      cursorColor: purpleColor,
                      textStyle: TextStyle(
                        color: purpleColor,
                        fontSize: 15.0.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
//                        borderRadius: BorderRadius.circular(3.0.w),
                        fieldHeight: 10.0.h,
                        fieldWidth: 10.0.w,
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
                      errorAnimationController: errorController,
                      controller: otpController,
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
                    height: 0.h,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Resend code again',
                          style: TextStyle(
                            color: purpleColor,
                            fontFamily: 'Avenir-Black',
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0.sp,
                          ),
                        ),
                      ),
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
                      Get.to(() => PersonalInfo());
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
