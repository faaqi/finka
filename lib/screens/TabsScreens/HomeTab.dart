import 'package:finka/widgets/CustomDashboardDesign.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeTab extends StatefulWidget {
  final BuildContext? menuScreenContext;
  final Function? onScreenHideButtonPressed;
  final bool? hideStatus;
  const HomeTab(
      {Key? key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            size: Size(
                100.w,
                (100.w * 1.256)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: CustomDashboardDesign(),
          ),
          Positioned(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5.h,
                ),
                ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 8.w,
                    ),
                  ),
                  trailing: InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: 3.w),
                      width: 6.w,
                      child: Image.asset('assets/icon/notification_icon.png'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.5.h,
                    left: 5.w,
                  ),
                  child: Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                        width: 5.w,
                        child: Image.asset("assets/icon/bank_record.png")),
                    Container(
                        width: 5.w,
                        child: Image.asset("assets/icon/bank_record.png")),
                    Container(
                        width: 5.w,
                        child: Image.asset("assets/icon/bank_record.png")),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
