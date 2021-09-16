import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/constants/text_styles.dart';
import 'package:Kollektivet/screens/Authentication/Registration/set_pin.dart';
import 'package:Kollektivet/screens/Authentication/login.dart';
import 'package:Kollektivet/widgets/CustomButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();

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
              height: 15.h,
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
                      'Personal information',
                      style: registrationHeaderStyle,
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
                            height: 1.h,
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
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => node.nextFocus(),
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
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'First name',
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
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => node.nextFocus(),
                            validator: (value) =>
                                value!.isEmpty ? 'Enter your First name' : null,
                            decoration: InputDecoration(
                              prefixIcon: Card(
                                color: purpleColor,
                                child: Icon(
                                  Icons.tag_faces_outlined,
                                  color: Colors.white,
                                  size: 5.w,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              hintText: 'Blanca',
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
                            keyboardType: TextInputType.name,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            controller: firstNameController,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Last name',
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
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => node.nextFocus(),
                            validator: (value) =>
                                value!.isEmpty ? 'Enter your Last name' : null,
                            decoration: InputDecoration(
                              prefixIcon: Card(
                                color: purpleColor,
                                child: Icon(
                                  Icons.tag_faces_outlined,
                                  color: Colors.white,
                                  size: 5.w,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              hintText: 'Rossi',
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
                            keyboardType: TextInputType.name,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            controller: lastNameController,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Street Address',
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
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => node.nextFocus(),
                            validator: (value) => value!.isEmpty
                                ? 'Enter your Street address'
                                : null,
                            decoration: InputDecoration(
                              prefixIcon: Card(
                                color: purpleColor,
                                child: Icon(
                                  Icons.pin_drop,
                                  color: Colors.white,
                                  size: 5.w,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              hintText: 'Cia salaria 612',
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
                            keyboardType: TextInputType.streetAddress,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            controller: streetAddressController,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'City',
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
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () => node.nextFocus(),
                            validator: (value) =>
                                value!.isEmpty ? 'Enter your city name' : null,
                            decoration: InputDecoration(
                              prefixIcon: Card(
                                color: purpleColor,
                                child: Icon(
                                  Icons.location_city,
                                  color: Colors.white,
                                  size: 5.w,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              hintText: 'Milano',
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
                            keyboardType: TextInputType.name,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            controller: cityController,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Country of residence',
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
                                ? 'Enter your country name'
                                : null,
                            decoration: InputDecoration(
                              prefixIcon: Card(
                                color: purpleColor,
                                child: Icon(
                                  Icons.flag,
                                  color: Colors.white,
                                  size: 5.w,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              hintText: 'Norway',
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
                            keyboardType: TextInputType.name,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                            controller: countryController,
                          ),
                        ],
                      ),
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
                      Get.to(() => SetPin());
                    },
                    color: purpleColor,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
          ],
        ),
      ),
    );
  }
}
