import 'package:cached_network_image/cached_network_image.dart';
import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/screens/Cart/cart.dart';
import 'package:Kollektivet/screens/Notification/notification_screen.dart';
import 'package:Kollektivet/widgets/CustomDashboardDesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  TextEditingController firstNameController =
      new TextEditingController(text: 'Alicia');
  TextEditingController lastNameController =
      new TextEditingController(text: "Jane");
  TextEditingController emailController =
      new TextEditingController(text: "alicia@finka.com");
  TextEditingController dateController =
      new TextEditingController(text: "02-25-1997");
  TextEditingController referralController =
      new TextEditingController(text: "fh8932ufijoa");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              CustomPaint(
                size: Size(100.w, (100.w * 1.256).toDouble()),
                painter: CustomDashboardDesign(),
              ),
              Positioned(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.h,
                    ),
                    ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(
                          left: 5.w,
                        ),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
//                      leading: IconButton(
//                        onPressed: () {},
//                        icon: Icon(
//                          Icons.menu_rounded,
//                          color: Colors.white,
//                          size: 8.w,
//                        ),
//                      ),
                      trailing: Container(
                        width: 25.w,
                        child: Row(
                          children: [
                            Spacer(),
                            InkWell(
                              onTap: () {
                                Get.to(() => Cart());
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 3.w),
                                width: 6.w,
                                child: Image.asset(
                                    'assets/newIcons/cart_icon.png'),
                              ),
                            ),
                            SizedBox(
                              width: 1.5.w,
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => NotificationScreen());
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 3.w),
                                width: 6.w,
                                child: Image.asset(
                                    'assets/icon/notification_icon.png'),
                              ),
                            ),
                          ],
                        ).paddingOnly(
                          right: 1.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Center(
                      child: Container(
                        height: 20.0.h,
                        width: 20.0.h,
                        child: Center(
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrjdA_7ae3VLSVlZ3iUyJDek_s-6HU3uc7xA&usqp=CAU",
                            fit: BoxFit.cover,
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) => new SizedBox(
                              width: 6.0.w,
                              height: 6.0.w,
                              child: CircularProgressIndicator(
                                color: purpleColor,
                                strokeWidth: 0.7.w,
                              ),
                            ),
                            errorWidget: (context, url, error) => Container(
                              width: 12.0.h,
                              height: 12.0.h,
                              child: Image.asset(
                                'assets/images/pic.jpg',
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[200],
                            border: Border.all(
                              width: 1,
                              color: purpleColor,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 2.0.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.0.w,
                            vertical: 1.0.h,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: purpleColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Edit Profile',
                            style: TextStyle(
                                color: purpleColor,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w600,
                                fontSize: 11.0.sp),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.0.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      border: Border.all(color: lightGrey),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextFormField(
                                    textCapitalization:
                                        TextCapitalization.words,
                                    controller: firstNameController,
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(fontFamily: 'Avenir'),
                                    decoration: new InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.only(
                                            left: 15,
                                            bottom: 11,
                                            top: 11,
                                            right: 15),
                                        hintText: "First Name",
                                        hintStyle:
                                            TextStyle(fontFamily: 'Avenir')),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      border: Border.all(color: lightGrey),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: TextFormField(
                                    textCapitalization:
                                        TextCapitalization.words,
                                    controller: lastNameController,
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(fontFamily: 'Avenir'),
                                    decoration: new InputDecoration(
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Last Name",
                                      hintStyle:
                                          TextStyle(fontFamily: 'Avenir'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                border: Border.all(color: lightGrey),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: emailController,
                              readOnly: true,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              style: TextStyle(fontFamily: 'Avenir'),
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                    left: 15, bottom: 11, top: 11, right: 15),
                                hintText: "vanessawong@gmail.com",
                                hintStyle: TextStyle(fontFamily: 'Avenir'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.0.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Date of Birth (MM-DD-YYYY)',
                              style: TextStyle(
                                fontSize: 10.5.sp,
                                fontFamily: 'Avenir-Heavy',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                border: Border.all(color: lightGrey),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: dateController,
                              readOnly: true,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              style: TextStyle(fontFamily: 'Avenir'),
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 15),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.calendar_today_outlined,
                                      color: purpleColor,
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Stack(
                              children: [
                                // Container(
                                //   padding: EdgeInsets.symmetric(vertical: 5),
                                //   decoration: BoxDecoration(
                                //       // color: Colors.white,
                                //       border: Border.all(color: lightGrey),
                                //       borderRadius: BorderRadius.circular(10)),
                                //   child: TextFormField(
                                //     // controller: bioController,
                                //     readOnly: true,
                                //     cursorColor: Colors.black,
                                //     keyboardType: TextInputType.text,
                                //     style: TextStyle(fontFamily: 'Avenir'),
                                //     decoration: new InputDecoration(
                                //       border: InputBorder.none,
                                //       focusedBorder: InputBorder.none,
                                //       enabledBorder: InputBorder.none,
                                //       errorBorder: InputBorder.none,
                                //       disabledBorder: InputBorder.none,
                                //       contentPadding: EdgeInsets.only(
                                //           left: 15, bottom: 11, top: 11, right: 15),
                                //       hintText: "********",
                                //       hintStyle: TextStyle(fontFamily: 'Avenir'),
                                //     ),
                                //   ),
                                // ),
                                Container(
                                  width: 100.0.w,
                                  height: 9.0.h,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 10),
                                  decoration: BoxDecoration(
                                      // color: Colors.white,
                                      border: Border.all(color: lightGrey),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('***********'),
                                      ),
                                      Text(
                                        'Change Password',
                                        style: TextStyle(
                                            color: purpleColor,
                                            fontSize: 12.0.sp,
                                            fontFamily: 'Avenir-Medium'),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 2.0.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Referral Code',
                              style: TextStyle(
                                fontSize: 10.5.sp,
                                fontFamily: 'Avenir-Heavy',
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.0.h,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                border: Border.all(color: lightGrey),
                                borderRadius: BorderRadius.circular(10)),
                            child: TextFormField(
                              controller: referralController,
                              readOnly: true,
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.text,
                              style: TextStyle(fontFamily: 'Avenir'),
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  contentPadding: EdgeInsets.only(
                                      left: 15, bottom: 11, top: 11, right: 15),
                                  hintText: "Referral code",
                                  hintStyle: TextStyle(fontFamily: 'Avenir'),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.copy,
                                      color: purpleColor,
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 3.0.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
