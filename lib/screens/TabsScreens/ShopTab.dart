import 'package:flutter/material.dart';
import 'package:finka/constants/colors.dart';
import 'package:finka/widgets/CustomDashboardDesign.dart';
import 'package:sizer/sizer.dart';

class ShopTab extends StatefulWidget {
  final BuildContext? menuScreenContext;
  final Function? onScreenHideButtonPressed;
  final bool? hideStatus;
  const ShopTab(
      {Key? key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);

  @override
  _ShopTabState createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchTextController = TextEditingController();
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
//                      leading: IconButton(
//                        onPressed: () {},
//                        icon: Icon(
//                          Icons.menu_rounded,
//                          color: Colors.white,
//                          size: 8.w,
//                        ),
//                      ),
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
                        "Shop",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
//                    Row(
//                      mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                        Container(
//                            height: 15.h,
//                            width: 30.w,
//                            child: Image.asset("assets/icon/catalog_icon.png")),
//                        Container(
//                            height: 15.h,
//                            width: 30.w,
//                            child: Image.asset("assets/icon/cart_icon.png")),
//                        Container(
//                            height: 15.h,
//                            width: 30.w,
//                            child:
//                                Image.asset("assets/icon/calendar_icon.png")),
//                      ],
//                    ),
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
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                    color: Colors.grey[300]!, width: 1.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                    color: Colors.grey[300]!, width: 1.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                borderSide: BorderSide(
                                    color: Colors.grey[300]!, width: 1.0),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.black),
                            cursorColor: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 3.w,
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
                      height: 7.h,
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
                          'Bucket List',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    GridView.builder(
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(
                          vertical: 3.h,
                          horizontal: 5.w,
                        ),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 2.h,
                          crossAxisSpacing: 4.w,
                          childAspectRatio: 0.85,
                        ),
                        itemCount: 7,
                        itemBuilder: (context, indesx) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey[50],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4.w))),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 2.h,
                                ),
                                Center(
                                  child: Container(
                                      width: 10.h,
                                      height: 10.h,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.w),
                                        ),
                                        child: Image.asset(
                                          "assets/images/pic.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                                SizedBox(
                                  height: 1.5.h,
                                ),
                                Text(
                                  "Hood Cap",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "\$100.0",
                                  style: TextStyle(
                                    color: purpleColor,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 0.5.h,
                                ),
                                Text(
                                  "Note",
                                  style: TextStyle(
                                    color: blueColor,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
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
