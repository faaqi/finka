import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/screens/Authentication/registeration.dart';
import 'package:Kollektivet/screens/MainTabBar.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 3.w,
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
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        size: 7.w,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: CircleAvatar(
                    radius: 12.w,
                    backgroundImage: AssetImage("assets/icon/logo.png"),
                    backgroundColor: Colors.transparent,
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
                          height: 5.h,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextFormField(
                          // autofillHints: [AutofillHints.email],
                          textAlignVertical: TextAlignVertical.top,
                          maxLines: 1,
                          onChanged: (val) {},
                          textInputAction: TextInputAction.next,
                          onEditingComplete: () => node.nextFocus(),
                          validator: (value) => value!.isEmpty
                              ? 'Enter your Email address'
                              : !RegExp(r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                                      .hasMatch(value)
                                  ? 'Enter a valid Email address'
                                  : null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Color(0xff22215B),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 20),
                            hintText: 'Email',
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
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Password',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 1.0.h,
                        ),
                        TextFormField(
                          // autofillHints: [AutofillHints.password],
                          textAlignVertical: TextAlignVertical.top,
                          maxLines: 1,
                          obscureText: _obscureText,
                          onChanged: (val) {},
                          textInputAction: TextInputAction.done,
                          onEditingComplete: () {
                            node.unfocus();
                            if (validateAndSave()) {}
                          },
                          validator: (value) =>
                              value!.isEmpty ? 'Enter your password' : null,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_open_outlined,
                              color: Color(0xff22215B),
                            ),
                            suffixIcon: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween, // added line
                              mainAxisSize: MainAxisSize.min, //
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                  child: Icon(
                                    Icons.remove_red_eye,
                                    color: !_obscureText
                                        ? purpleColor
                                        : Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 2.0.w,
                                ),
                              ],
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 20),
                            hintText: 'Password',
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
                          keyboardType: TextInputType.text,
                          style: TextStyle(color: Colors.black),
                          cursorColor: Colors.black,
                          controller: passwordController,
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                color: Color(0xff22215B),
                                fontSize: 11.0.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomButton2(
                  title: 'Sign In',
                  height: 6.5.h,
                  width: 100.w,
                  hMargin: 10.w,
                  fontSize: 13.sp,
                  onpress: () {
                    if (validateAndSave()) {
                      if (emailController.text.trim() == "tester@finka.com" &&
                          passwordController.text.trim() == "1@Finka") {
                        Get.to(() => HomeBottomTabs());
                      }
                    }
                  },
                  borderRadius: 3.w,
                  color: purpleColor,
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: 'or ',
                            style: TextStyle(
                              fontFamily: 'Avenir-Medium',
                              fontSize: 11.0.sp,
                            )),
                        TextSpan(
                            text: 'Register a new account',
                            style: TextStyle(
                              color: Color(0xff22215B),
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0.sp,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => Registeration());
                              }),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
