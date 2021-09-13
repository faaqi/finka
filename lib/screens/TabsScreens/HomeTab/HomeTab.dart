import 'package:finka/constants/colors.dart';
import 'package:finka/screens/TabsScreens/HomeTab/bank_account.dart';
import 'package:finka/screens/TabsScreens/HomeTab/community_screen.dart';
import 'package:finka/widgets/CustomDashboardDesign.dart';
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

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  TextEditingController searchTextController = TextEditingController();

  int _currPage = 0;

  TabController? _tabController;
  final PageController _pageController = PageController();

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
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
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => BankAccount());
                          },
                          child: Container(
                              height: 15.h,
                              width: 30.w,
                              child:
                                  Image.asset("assets/icon/bank_record.png")),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(() => CommunityScreen());
                          },
                          child: Container(
                              height: 15.h,
                              width: 30.w,
                              child: Image.asset("assets/icon/social.png")),
                        ),
                        Container(
                            height: 15.h,
                            width: 30.w,
                            child: Image.asset("assets/icon/messenger.png")),
                      ],
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
                          'Trending',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      height: 26.h,
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
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 1.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Chats',
                            style: TextStyle(
                              color: _tabController?.index == 0
                                  ? Colors.black
                                  : Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            'Groups',
                            style: TextStyle(
                              color: _tabController?.index == 1
                                  ? Colors.black
                                  : Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TabPageSelector(
                            controller: _tabController,
                            color: Colors.white,
                            selectedColor: Colors.black,
                          ),
                          NotificationListener(
                            onNotification: (overscroll) {
                              if (overscroll is OverscrollNotification &&
                                  overscroll.overscroll != 0 &&
                                  overscroll.dragDetails != null) {
                                if (overscroll.overscroll < 0) {
                                  setState(() {
                                    _currPage = 0;
                                  });
                                } else {
                                  setState(() {
                                    _currPage = 2;
                                  });
                                }

                                _pageController.animateToPage(
                                    overscroll.overscroll < 0 ? 0 : 2,
                                    curve: Curves.ease,
                                    duration: Duration(milliseconds: 250));
                              }
                              return true;
                            },
                            child: Flexible(
                              child: TabBarView(
                                controller: _tabController,
                                children: <Widget>[
                                  ListView.builder(
                                      itemCount: 5,
                                      padding: EdgeInsets.all(0),
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          leading: Container(
                                            width: 12.w,
                                            height: 12.w,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/images/pic.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          title: Text(
                                            "Maceij Kowalski",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                          subtitle: Text(
                                            "What's up buddy?",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          trailing: Text(
                                            '08:43',
                                            style: TextStyle(
                                              color: Colors.black38,
                                            ),
                                          ),
                                        );
                                      }),
                                  ListView.builder(
                                      itemCount: 1,
                                      padding: EdgeInsets.all(0),
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          leading: Container(
                                            width: 12.w,
                                            height: 12.w,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/images/pic.jpg",
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          title: Text(
                                            "Maceij Kowalski",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13.sp,
                                            ),
                                          ),
                                          subtitle: Text(
                                            "What's up buddy?",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10.sp,
                                            ),
                                          ),
                                          trailing: Text(
                                            '08:43',
                                            style: TextStyle(
                                              color: Colors.black38,
                                            ),
                                          ),
                                        );
                                      }),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
}
