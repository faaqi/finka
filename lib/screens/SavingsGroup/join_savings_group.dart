import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class JoinSavingsGroup extends StatefulWidget {
  @override
  _JoinSavingsGroupState createState() => _JoinSavingsGroupState();
}

class _JoinSavingsGroupState extends State<JoinSavingsGroup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 4.h,
              ),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.cancel,
                    size: 9.w,
                  )),
              SizedBox(
                height: 3.h,
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
                height: 3.h,
              ),
              Center(
                child: Container(
                  width: 60.w,
                  height: 30.h,
                  child: Image.asset('assets/images/savings_group.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
