import 'package:finka/constants/colors.dart';
import 'package:finka/widgets/CustomButton.dart';
import 'package:finka/widgets/CustomDashboardDesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CommunityScreen extends StatelessWidget {
  TextEditingController searchTextController = TextEditingController();
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
                      leading: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 2.w),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.w)),
                              border: Border.all(
                                color: Colors.white,
                                width: 0.5.w,
                              )),
                          padding: EdgeInsets.all(1.w),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.white,
                            size: 5.5.w,
                          ),
                        ),
                      ),
                      trailing: InkWell(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(right: 3.w),
                          width: 6.w,
                          child:
                              Image.asset('assets/icon/notification_icon.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 1.5.h,
                        left: 5.w,
                      ),
                      child: Text(
                        "Community",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          width: 72.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.top,
                            maxLines: 1,
                            controller: searchTextController,

                            onFieldSubmitted: (val) {},
                            // validator: (value) => value.isEmpty
                            //     ? 'Enter a name to search'
                            //     : RegExp(r'[,.!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]')
                            //             .hasMatch(value)
                            //         ? 'Enter a Valid Name'
                            //         : null,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              prefixIcon: InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.search,
                                  color: purpleColor,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(
                                top: 20.0,
                                left: 20,
                              ),
                              hintText: 'vegan eyeshadow palette...',
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                    color: Colors.grey[300]!, width: 1.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.all(
                            Radius.circular(2.5.w),
                          ),
                          color: purpleColor,
                          child: Padding(
                            padding: EdgeInsets.all(3.w),
                            child: Container(
                                width: 2.5.h,
                                height: 2.5.h,
                                child:
                                    Image.asset("assets/icon/filter_icon.png")),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                            height: 2.5.h,
                            width: 2.5.h,
                            child: Image.asset("assets/icon/save_icon.png")),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'Limited Editions',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 22.h,
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(
                            left: 4.w,
                            right: 4.w,
                            top: 2.5.h,
                          ),
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 1.5.w,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                          width: 35.w,
                                          height: 36.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(2.w)),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(2.w)),
                                            child: Image.asset(
                                              "assets/images/pic.jpg",
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      Positioned(
                                        top: 1.6.h,
                                        right: 2.5.w,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                          padding: EdgeInsets.all(1.w),
                                          child: Center(
                                            child: Icon(
                                              Icons.favorite,
                                              color: purpleColor,
                                              size: 6.w,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                            height: 2.5.h,
                            width: 2.5.h,
                            child: Image.asset("assets/icon/save_icon.png")),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'Suggestions',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          vertical: 3.h,
                          horizontal: 5.w,
                        ),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 2.h,
                          crossAxisSpacing: 4.w,
                          childAspectRatio: 0.9,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, indesx) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 1.5.w,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                        width: 35.w,
                                        height: 36.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.w)),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2.w)),
                                          child: Image.asset(
                                            "assets/images/download.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Positioned(
                                      top: 1.6.h,
                                      right: 2.5.w,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.all(1.w),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: purpleColor,
                                            size: 6.w,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 2.w,
                                ),
                                Text(
                                  'Event Name',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 1.w,
                                ),
                                Text(
                                  'Category',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
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
