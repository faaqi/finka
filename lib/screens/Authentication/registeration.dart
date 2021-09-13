import 'package:finka/constants/colors.dart';
import 'package:finka/constants/text_styles.dart';
import 'package:finka/screens/Authentication/Registration/enter_email.dart';
import 'package:finka/screens/Authentication/login.dart';
import 'package:finka/widgets/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Registeration extends StatefulWidget {
  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  List<String> _languages = ['Arabic', 'Dutch', 'English'];
  String? _selectedLanguages = 'English';

  int radioValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 5.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text(
                  'Registration',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 11.h,
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
                    'We are about to start your registration...',
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
                    'Select your preferred language and specify if you are a new user or have been registered before.',
                    style: registrationSubHeadingStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 0.5.h,
                    ),
                    child: Text(
                      'Language',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      color: purpleColor,
                      child: Padding(
                        padding: EdgeInsets.all(1.w),
                        child: Icon(
                          Icons.language_sharp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    DropdownButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                      ),
                      hint: Text(
                          'Please choose a location'), // Not necessary for Option 1
                      value: _selectedLanguages,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedLanguages = newValue.toString();
                        });
                      },
                      items: _languages.map((location) {
                        return DropdownMenuItem(
                          child: new Text(
                            location,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          value: location,
                        );
                      }).toList(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w,
                  ),
                  child: Column(
                    children: [
                      RadioListTile(
                        activeColor: purpleColor,
                        value: 0,
                        groupValue: radioValue,
                        onChanged: (v) {
                          setState(() {
                            radioValue = int.parse(v.toString());
                          });
                        },
                        title: Text('I am a new user'),
                      ),
                      RadioListTile(
                        activeColor: purpleColor,
                        value: 1,
                        groupValue: radioValue,
                        onChanged: (v) {
                          setState(() {
                            radioValue = int.parse(v.toString());
                          });
                        },
                        title: Text('I have been registered before'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 4.h,
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
                    if (radioValue == 0) {
                      Get.to(() => EnterEmail());
                    } else {
                      Get.to(() => Login());
                    }
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
    );
  }
}
