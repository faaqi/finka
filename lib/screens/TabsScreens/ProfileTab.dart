import 'package:finka/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileTab extends StatefulWidget {
  final BuildContext? menuScreenContext;
  final Function? onScreenHideButtonPressed;
  final bool? hideStatus;
  const ProfileTab(
      {Key? key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "My Profile",
          style: TextStyle(
            color: purpleColor,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
