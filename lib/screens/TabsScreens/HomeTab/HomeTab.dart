import 'package:cached_network_image/cached_network_image.dart';
import 'package:Kollektivet/constants/colors.dart';
import 'package:Kollektivet/screens/Cart/cart.dart';
import 'package:Kollektivet/screens/Notification/notification_screen.dart';
import 'package:Kollektivet/screens/Rewards/rewards.dart';
import 'package:Kollektivet/screens/SavingsGroup/join_savings_group.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../BankAccount/bank_account.dart';
import '../../Community/community_screen.dart';
import 'package:Kollektivet/widgets/CustomDashboardDesign.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  TextEditingController searchTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

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
                          top: 2.h,
                          right: 1.w,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
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

                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 0.w,
                        vertical: 2.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularImgButtons(
                            onPress: () {
                              Get.to(() => BankAccount());
                            },
                            imgAddress: "assets/newIcons/Chart.png",
                            textTitle: "Account",
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CircularImgButtons(
                            imgAddress: "assets/newIcons/three_user.png",
                            onPress: () {
                              Get.to(() => CommunityScreen());
                            },
                            textTitle: "Community",
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          CircularImgButtons(
                            imgAddress: "assets/newIcons/Activity.png",
                            onPress: () {
                              Get.to(() => Rewards());
                            },
                            textTitle: "Rewards",
                          ),
                        ],
                      ),
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
                            child: Image.asset("assets/icon/trending.png")),
                        SizedBox(
                          width: 1.w,
                        ),
                        Text(
                          'Your Goals',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 23.5.h,
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
                            return InkWell(
                              onTap: () {
                                showGoalDialog(context);
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 1.5.w,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl:
                                          "https://images.unsplash.com/photo-1584908917822-6799d69a72cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&w=1000&q=80",
                                      fit: BoxFit.cover,
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        width: 50.w,
                                        height: 30.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4.w)),
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      placeholder: (context, url) => index == 0
                                          ? Container(
                                              width: 100.w,
                                              height: 30.w,
                                              child: Center(
                                                child: new SizedBox(
                                                  width: 6.0.w,
                                                  height: 6.0.w,
                                                  child:
                                                      CircularProgressIndicator(
                                                    color: purpleColor,
                                                    strokeWidth: 0.7.w,
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(),
                                      errorWidget: (context, url, error) =>
                                          Container(
                                        width: 12.0.h,
                                        height: 12.0.h,
                                        child: Image.asset(
                                          'assets/images/pic.jpg',
                                        ),
                                      ),
                                    ),
//                                    Container(
//                                        width: 50.w,
//                                        height: 30.w,
//                                        decoration: BoxDecoration(
//                                          borderRadius: BorderRadius.all(
//                                              Radius.circular(4.w)),
//                                        ),
//                                        child: ClipRRect(
//                                          borderRadius: BorderRadius.all(
//                                              Radius.circular(4.w)),
//                                          child: Image.network(
//                                            "https://images.unsplash.com/photo-1584908917822-6799d69a72cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&w=1000&q=80",
//                                            fit: BoxFit.cover,
//                                          ),
//                                        )),
                                    SizedBox(
                                      height: 2.w,
                                    ),
                                    Text(
                                      'Concert',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 1.w,
                                    ),
                                    Text(
                                      'Alan Walker',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 6.w,
                        ),
                        Container(
                          width: 70.w,
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
                    Row(
                      children: [
                        Text(
                          'Join a kollektive',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'See all',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ).paddingSymmetric(
                      horizontal: 6.w,
                      vertical: 1.5.h,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.only(
                          left: 4.w,
                          right: 4.w,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 1.5.w,
                              vertical: 0.5.h,
                            ),
                            child: InkWell(
                              onTap: () {
                                Get.to(() => JoinSavingsGroup());
                              },
                              child: Card(
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(4.w),
                                    topRight: Radius.circular(4.w),
                                    bottomLeft: Radius.circular(4.w),
                                    bottomRight: Radius.circular(4.w),
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 1.5.h,
                                        horizontal: 4.w,
                                      ),
                                      decoration: BoxDecoration(
                                          color: purpleColor,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.w),
                                            topRight: Radius.circular(4.w),
                                          )),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 6.w,
                                            height: 6.w,
                                            child: Image.asset(
                                                "assets/icon/team_icon.png"),
                                          ),
                                          SizedBox(
                                            width: 2.w,
                                          ),
                                          Text(
                                            '3 slots available',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Spacer(),
                                          Row(
                                            children: [
                                              Container(
                                                height: 7.w,
                                                width: 7.w,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle),
                                                child: Center(
                                                  child: Text(
                                                    '3',
                                                    style: TextStyle(
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 10.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 3.w,
                                              ),
                                              Container(
                                                height: 5.h,
                                                child: ListView.builder(
                                                    shrinkWrap: true,
                                                    itemCount: 3,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    padding: EdgeInsets.only(
                                                      left: 1.w,
                                                      right: 1.w,
                                                    ),
                                                    physics:
                                                        NeverScrollableScrollPhysics(),
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Container(
                                                        width: 8.w,
                                                        decoration:
                                                            BoxDecoration(
                                                                border:
                                                                    Border.all(
                                                                  width: 1,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                shape: BoxShape
                                                                    .circle,
                                                                image: DecorationImage(
                                                                    image: NetworkImage(
                                                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrjdA_7ae3VLSVlZ3iUyJDek_s-6HU3uc7xA&usqp=CAU"),
                                                                    fit: BoxFit
                                                                        .cover)),
                                                      );
                                                    }),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 3.h,
                                        horizontal: 4.w,
                                      ),
                                      decoration: BoxDecoration(
                                          color: cardBgColour,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(4.w),
                                            bottomRight: Radius.circular(4.w),
                                          )),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 10.h,
                                            child: VerticalDivider(
                                              thickness: 0.5.w,
                                              color: Colors.orange,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 4.w,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Amount',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0.5.h,
                                              ),
                                              Text(
                                                '100000',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Spacer(),
                                          Column(
                                            children: [
                                              Text(
                                                'Per Month',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0.5.h,
                                              ),
                                              Text(
                                                '10000',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 1.5.h,
                                              ),
                                              Text(
                                                'Rounds',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 11.sp,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 0.5.h,
                                              ),
                                              Text(
                                                '10',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 10.sp,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 5.w,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
//                    Flexible(
//                      child: SwipeDetector(
//                        onSwipeLeft: () {
//                          setState(() {
//                            showGroups = true;
//                          });
//                        },
//                        onSwipeRight: () {
//                          setState(() {
//                            showGroups = false;
//                          });
//                        },
//                        swipeConfiguration: SwipeConfiguration(
//                            horizontalSwipeMaxHeightThreshold: 50.0,
//                            horizontalSwipeMinDisplacement: 50.0,
//                            horizontalSwipeMinVelocity: 1000.0),
//                        child: showGroups
//                            ? ListView.builder(
//                                itemCount: 1,
//                                padding: EdgeInsets.all(0),
//                                shrinkWrap: true,
//                                physics: NeverScrollableScrollPhysics(),
//                                itemBuilder: (context, index) {
//                                  return ListTile(
//                                    leading: Container(
//                                      width: 12.w,
//                                      height: 12.w,
//                                      decoration: BoxDecoration(
//                                          shape: BoxShape.circle,
//                                          color: Colors.white,
//                                          image: DecorationImage(
//                                            image: AssetImage(
//                                              "assets/images/pic.jpg",
//                                            ),
//                                            fit: BoxFit.cover,
//                                          )),
//                                    ),
//                                    title: Text(
//                                      "Maceij Kowalski",
//                                      style: TextStyle(
//                                        color: Colors.black,
//                                        fontWeight: FontWeight.w500,
//                                        fontSize: 13.sp,
//                                      ),
//                                    ),
//                                    subtitle: Text(
//                                      "What's up buddy?",
//                                      style: TextStyle(
//                                        color: Colors.grey,
//                                        fontSize: 10.sp,
//                                      ),
//                                    ),
//                                    trailing: Text(
//                                      '08:43',
//                                      style: TextStyle(
//                                        color: Colors.black38,
//                                      ),
//                                    ),
//                                  );
//                                })
//                            : ListView.builder(
//                                itemCount: 7,
//                                padding: EdgeInsets.all(0),
//                                shrinkWrap: true,
//                                physics: NeverScrollableScrollPhysics(),
//                                itemBuilder: (context, index) {
//                                  return ListTile(
//                                    leading: Container(
//                                      width: 12.w,
//                                      height: 12.w,
//                                      decoration: BoxDecoration(
//                                          shape: BoxShape.circle,
//                                          color: Colors.white,
//                                          image: DecorationImage(
//                                            image: AssetImage(
//                                              "assets/images/pic.jpg",
//                                            ),
//                                            fit: BoxFit.cover,
//                                          )),
//                                    ),
//                                    title: Text(
//                                      "Maceij Kowalski",
//                                      style: TextStyle(
//                                        color: Colors.black,
//                                        fontWeight: FontWeight.w500,
//                                        fontSize: 13.sp,
//                                      ),
//                                    ),
//                                    subtitle: Text(
//                                      "What's up buddy?",
//                                      style: TextStyle(
//                                        color: Colors.grey,
//                                        fontSize: 10.sp,
//                                      ),
//                                    ),
//                                    trailing: Text(
//                                      '08:43',
//                                      style: TextStyle(
//                                        color: Colors.black38,
//                                      ),
//                                    ),
//                                  );
//                                }),
//                      ),
//                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }

  showGoalDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Color(0xFFEBF1FD),
      insetPadding: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      content: Container(
        width: 100.0.w,
        height: 67.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.cancel,
                  size: 10.w,
                ),
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 20.h,
                  child: Container(
                    height: 15.h,
                    width: 15.h,
                    padding: EdgeInsets.all(0.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 1.w,
                          color: Colors.white,
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1584908917822-6799d69a72cc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDEzfHx8ZW58MHx8fHw%3D&w=1000&q=80'),
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                Positioned(
                  right: 0.w,
                  bottom: 1.h,
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 5.w,
                    ),
                    padding: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 0.5.w,
                        color: purpleColor,
                      ),
                    ),
                    child: Icon(
                      Icons.add,
                      color: purpleColor,
                      size: 6.w,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4.0.h,
            ),
            Container(
              height: 27.h,
              width: 100.w,
              child: ListView.builder(
                  itemCount: 12,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.w,
                      ),
                      child: Column(
                        children: [
                          RotatedBox(
                            quarterTurns: -1,
                            child: LinearPercentIndicator(
                              width: 45.w,
                              lineHeight: 2.h,
                              progressColor: purpleColor,
                              percent: index % 2 == 0 ? 0.7 : 0.4,
                            ),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          RotationTransition(
                            turns: AlwaysStoppedAnimation(320 / 360),
                            child: Text(
                              index == 0
                                  ? 'Jan'
                                  : index == 1
                                      ? 'Feb'
                                      : index == 2
                                          ? 'Mar'
                                          : index == 3
                                              ? 'Apr'
                                              : index == 4
                                                  ? 'May'
                                                  : index == 5
                                                      ? 'Jun'
                                                      : index == 6
                                                          ? 'Jul'
                                                          : index == 7
                                                              ? 'Aug'
                                                              : index == 8
                                                                  ? 'Sep'
                                                                  : index == 9
                                                                      ? 'Oct'
                                                                      : index ==
                                                                              10
                                                                          ? 'Nov'
                                                                          : index == 11
                                                                              ? 'Dec'
                                                                              : "",
                              style: TextStyle(
                                fontSize: 9.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 2.0.h,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      'Payday Date',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                      ),
                    ),
                    Text(
                      'Aug, 2021',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.sp,
                      ),
                    ),
                    Text(
                      'Mon, 5',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 9.sp,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CircularPercentIndicator(
                  radius: 25.w,
                  percent: 0.7,
                  reverse: true,
                  progressColor: purpleColor,
                  center: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Target\nAmount',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 10.sp,
                        ),
                      ),
                      Text(
                        '70% spent',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 9.sp,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      'Finish Date',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                      ),
                    ),
                    Text(
                      'Aug, 2021',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.sp,
                      ),
                    ),
                    Text(
                      'Mon, 5',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 9.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      actions: [],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class CircularImgButtons extends StatelessWidget {
  final imgAddress;
  final textTitle;
  final onPress;

  const CircularImgButtons(
      {Key? key, this.imgAddress, this.textTitle, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        children: [
          Container(
            height: 8.5.h,
            width: 8.5.h,
            padding: EdgeInsets.all(3.5.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5.w)),
            ),
            child: Image.asset(imgAddress),
          ),
        ],
      ),
    );
  }
}
