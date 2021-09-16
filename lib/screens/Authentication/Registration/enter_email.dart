import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/constants/text_styles.dart';
import 'package:Kollektivet/screens/Authentication/Registration/confirm_code.dart';
import 'package:Kollektivet/screens/Authentication/login.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class EnterEmail extends StatefulWidget {
  @override
  _EnterEmailState createState() => _EnterEmailState();
}

class _EnterEmailState extends State<EnterEmail> {
  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  bool checkTerms = false;

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
                      'Please enter your mobile phone & email',
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
                      'We\'ll use your mobile phone and e-mail to send you the activation code for this application.',
                      style: registrationSubHeadingStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Text('Phone number', style: textFormFieldsHeadings),
                          SizedBox(
                            height: 1.h,
                          ),
                          TextFormField(
                            // autofillHints: [AutofillHints.password],
                            textAlignVertical: TextAlignVertical.top,
                            maxLines: 1,
                            onChanged: (val) {},
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () {
                              node.nextFocus();
//                              if (validateAndSave()) {}
                            },
                            validator: (value) => value!.isEmpty
                                ? 'Enter your phone number'
                                : null,
                            decoration: InputDecoration(
                              prefixIcon: Card(
                                color: purpleColor,
                                child: Icon(
                                  Icons.phone_android,
                                  color: Colors.white,
                                  size: 5.w,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15.0, horizontal: 20),
                              hintText: '+44 35 6 456 1234',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: (Colors.grey[300])!, width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            controller: phoneNumberController,
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text(
                            'Email address',
                            style: textFormFieldsHeadings,
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          TextFormField(
                            // autofillHints: [AutofillHints.email],
                            textAlignVertical: TextAlignVertical.top,
                            maxLines: 1,
                            onChanged: (val) {},
                            textInputAction: TextInputAction.done,
                            onEditingComplete: () => node.unfocus(),
                            validator: (value) => value!.isEmpty
                                ? 'Enter your Email address'
                                : !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                        .hasMatch(value)
                                    ? 'Enter a valid Email address'
                                    : null,
                            decoration: InputDecoration(
                              prefixIcon: Card(
                                color: purpleColor,
                                child: Icon(
                                  Icons.email_outlined,
                                  color: Colors.white,
                                  size: 5.w,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              hintText: 'Your email address',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: (Colors.grey[300])!, width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            controller: emailController,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          focusColor: purpleColor,
                          activeColor: purpleColor,
                          value: checkTerms,
                          onChanged: (val) {
                            setState(() {
                              checkTerms = val!;
                            });
                          },
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                                text: 'I accept ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 11.0.sp,
                                  fontFamily: 'Avenir',
                                ),
                                children: [
                                  TextSpan(
                                      text: 'Terms and Conditions.',
                                      recognizer: new TapGestureRecognizer()
                                        ..onTap = () {},
                                      style: TextStyle(
                                        color: purpleColor,
                                        fontSize: 11.0.sp,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                      )),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
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
                      Get.to(() => ConfirmCode());
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
